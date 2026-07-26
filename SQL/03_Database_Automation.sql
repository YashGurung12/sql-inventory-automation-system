#Function for ID Generation
delimiter //
create function func_idGEN(c char(1),num int)
returns varchar(5)
deterministic 
begin
	declare res varchar(5);
	CASE
		WHEN num<10 then
			set res=concat(c,'000',num);
		WHEN num>=10 and num<100 then
			set res=concat(c,'00',num);
		WHEN num>=100 and num<1000 then
			set res=concat(c,'0',num);
		WHEN num>=1000 and num<10000 then
			set res=concat(c,num);
		ELSE
			set res='Number out of bounds';
	END CASE;
    return res;
end //
delimiter ;

#num_table1 for supplier Auto ID
create table num_table1(x int primary key auto_increment)auto_increment=6;

#SUPPLIER
Select * from SUPPLIER;
drop procedure ADDSUPPLIER;
delimiter //
create procedure ADDSUPPLIER(SNAME varchar(20),SADD varchar(30),
Scity varchar(15),SPHONE char(10),EMAIL varchar(30))
begin
	declare num int;
    declare id_num varchar(5);
    declare error_num int;
    declare error_msg varchar(100);
    
    declare exit handler for sqlexception
    begin
		get diagnostics condition 1
        error_num=mysql_errno,
        error_msg=message_text;
        select concat(error_num,' ',error_msg) as 'ERROR';
        rollback;
	end;
	start transaction;
		insert into num_table1 values(null);
        set num=last_insert_id();
        set id_num=(Select func_idGEN('S',num));
        insert into SUPPLIER values(id_num,sname,sadd,scity,sphone,email);
        Select * from SUPPLIER;
	commit;
end //
delimiter ;

call ADDSUPPLIER('Gurgaon Logistics','112,Dwarka ExpressWay,Gurgaon','GURGAON','9925432345','Glogistics@gmail.com');

#PRODUCT
drop procedure ADDPRO;
Select * from PRODUCT;
-- Auto-increment table for Product --
create table num_table2(x int primary key auto_increment)auto_increment=17;
-- Function func_idGen is gonna be reused for ID generation --
delimiter //
create procedure ADDPRO(PDESC varchar(50),PRICE int,CATEGORY char(2),SID char(5))
begin
	declare num int;
    declare id_num varchar(5);
    declare error_num int;
    declare error_msg varchar(100);
    
    declare exit handler for sqlexception
    begin
		get diagnostics condition 1
		error_num=mysql_errno,
		error_msg=message_text;
        select concat(error_num,' ',error_msg) as 'ERROR';
        rollback;
	end;
    
	start transaction;
		insert into num_table2 values(null);
		set num=last_insert_id();
		set id_num=(Select func_idGen('P',num));
		insert into PRODUCT values(id_num,pdesc,price,category,sid);
		select * from PRODUCT;
	commit;
end //
delimiter ;
    
call ADDPRO('Portabe Insulin pen',599,'HC','S0001');

#CUSTOMER
drop procedure addcust;
Select * from CUST;
-- Auto-increment table for CUSTOMER --
create table num_table3(x int primary key auto_increment)auto_increment=11;
-- Function func_idGen is gonna be reused for ID generation --
delimiter //
create procedure ADDCUST(CNAME varchar(20),ADDRESS varchar(30),CITY varchar(15),
PHONE char(10),EMAIL varchar(30),DOB date)
begin
	declare num int;
    declare id_num varchar(5);
    declare error_num int;
    declare error_msg varchar(100);
    
    declare exit handler for sqlexception
    begin
		get diagnostics condition 1
		error_num=mysql_errno,
		error_msg=message_text;
        select concat(error_num,' ',error_msg) as 'ERROR';
        rollback;
	end;
    
	start transaction;
		insert into num_table3 values(null);
		set num=last_insert_id();
		set id_num=(Select func_idGen('C',num));
		insert into CUST values(id_num,cname,address,city,phone,email,dob);
		select * from CUST;
	commit;
end //
delimiter ;
    
call ADDCUST('Yash Gurung','102,MAXX Sattva','GURGAON','9976341232','yash.gurung@gmail.com','1999-01-01');

#ORDER
drop procedure ADDORDER;
Select * from ORDERS;
-- Auto-increment table for CUSTOMER --
create table num_table4(x int primary key auto_increment)auto_increment=6;
-- Function func_idGen is gonna be reused for ID generation --
delimiter //
create procedure ADDORDER(CID char(5),PID char(5),OQTY int)
begin
	declare num int;
    declare id_num varchar(5);
    declare error_num int;
    declare error_msg varchar(100);
    
    declare exit handler for sqlexception
    begin
		get diagnostics condition 1
		error_num=mysql_errno,
		error_msg=message_text;
        select concat(error_num,' ',error_msg) as 'ERROR';
        rollback;
	end;
    
	start transaction;
		insert into num_table4 values(null);
		set num=last_insert_id();
		set id_num=(Select func_idGen('O',num));
		insert into ORDERS(OID,ODATE,CID,PID,OQTY)values(id_num,date_format(now(),'%Y-%m-%d'),cid,pid,oqty);
		select * from ORDERS;
	commit;
end //
delimiter ;

call ADDORDER('C0011','P0017',5);
