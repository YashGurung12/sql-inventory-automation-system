-- BILL --
create view BILL
as
Select OID,ODATE,CNAME,ADDRESS,PHONE,PDESC,PRICE,OQTY,PRICE*OQTY as 'AMT' from Orders as O1
inner join Product as P1
on O1.PID=P1.PID
inner join CUST C1
on O1.CID=C1.CID;

Select * from Bill;