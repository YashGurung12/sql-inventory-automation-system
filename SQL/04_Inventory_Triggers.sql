-- SQL TRIGGER --
Select * from Product;
Select * from ORDERS;
Select * from Stock;
Select * from Cust;

/* Removing Product, that triggers Stock,Orders */
delimiter //
create trigger RMV_Product
before delete
on PRODUCT
for each row
begin
	delete from Stock where PID=old.pid;
    delete from Orders where PID=old.pid;
end //
delimiter ;

delete from Product where PID='P0008';

/* New Order Acceptance, while checking the Stock Availability */
delimiter //
create trigger NEW_OrderCHK
before insert
on ORDERS
for each row
begin
	declare Curr_Stock int;
    Select SQTY into Curr_Stock from Stock where PID=new.pid;
    
    if New.OQTY>Curr_Stock then
		signal sqlstate '45000'
        set Message_text='Out of Stock';
	end if;
end //
delimiter ;

delimiter //
create trigger NEW_OrderAdd
after insert
on ORDERS
for each row
begin
	update Stock set SQTY=SQTY-new.OQTY where PID=new.PID;
end //
delimiter ;

call addorder('C0009','P0001',25); #checked and added
call addorder('C0006','P0001',26); #checked and Out of Stock

/* Updating an Order for same or different product, while also checking the Stock */
delimiter //
create trigger UPD_ORDERCHK
before update
on ORDERS
for each row
begin
	declare Curr_stock int;
    declare gross_stock int;
    
    if new.pid=old.pid then 
		Select SQTY into Curr_stock from Stock where pid=new.pid;
        set gross_stock=new.OQTY-old.OQTY;
        if gross_stock>0 and Curr_stock<gross_stock then
			signal sqlstate '45000'
			set Message_text='Insufficient Stock';
        end if;
    else
		Select SQTY into Curr_stock from Stock where pid=new.pid;
        if Curr_stock<new.OQTY then
			signal sqlstate '45000'
            set Message_text='Insufficient Stock';
		end if;
	end if;
end //
delimiter ;

delimiter //
create trigger UPD_ORDERADD
after update
on ORDERS
for each row
begin
	if new.pid=old.pid then
		update Stock set SQTY=SQTY-(New.OQTY-Old.OQTY) where pid=new.pid;
	else
		update Stock set SQTY=SQTY+old.OQTY where pid=old.pid;
        update Stock set SQTY=SQTY-new.OQTY where pid=new.pid;
	end if;
end //
delimiter ;
    
Select * from ORDERS;
Select * from Stock;

update ORDERS set OQTY=17 where OID='O0001';