create database Inventory;
use Inventory;

-- PRODUCT --
create table PRODUCT(PID char(5) primary key,
PDESC varchar(90) not null,
PRICE int check(PRICE>0),
CATEGORY char(2) check(CATEGORY in ('IT','HA','HC')),
SID char(5) references SUPPLIER(SID));

insert into product values('P0001','Helps to ease the pain in the lower back',3999,'HC','S0001'),
('P0002','New model Printer with new accurate colours for printing',12999,'IT','S0002'),
('P0003','Helps to get Blood reading into your phone',6999,'HA','S0003'),
('P0004','Helps to remove cold and fever',399,'HC','S0001'),
('P0005','New Model Phone with New telephoto lens',39999,'IT','S0004'),
('P0006','App that helps to read all readings of persons health',14999,'HA','S0003'),
('P0007','New Model tablet with new colours',49999,'IT','S0004'),
('P0008','Laptop with high performance for office and gaming',89999,'IT','S0004'),
('P0009','Portable printer for small businesses',8999,'IT','S0002'),
('P0010','Device to monitor heart rate and oxygen levels',5999,'HA','S0003'),
('P0011','Medicine kit for basic healthcare needs',999,'HC','S0001'),
('P0012','Finance tracking app with AI insights',19999,'IT','S0005'),
('P0013','Smartwatch with health tracking features',12999,'HA','S0003'),
('P0014','Wireless keyboard and accessories for office use',4999,'IT','S0002'),
('P0015','Advanced laptop with finance analytics tools',109999,'IT','S0005'),
('P0016','Tablet with healthcare monitoring applications',45999,'HA','S0003');

Select * from Product;

-- SUPPLIER --
create table SUPPLIER(SID char(5) primary key,
SNAME varchar(20) not null,
SADD varchar(50) not null,
SCITY varchar(15) default 'DELHI',
SPHONE char(10) unique,
EMAIL varchar(25));

INSERT INTO SUPPLIER VALUES('S0001','Aarav Medicos','12 MG Road, Delhi','DELHI','9876543210','aarav.medicos@gmail.com'),
('S0002','PrintTech Solutions','45 Nehru Place, Delhi','DELHI','9876501234','printtech@gmail.com'),
('S0003','HealthPlus Devices','78 Sector 18, Noida','NOIDA','9123456780','healthplus@gmail.com'),
('S0004','TechZone India','22 Brigade Road, Bengaluru','BENGALURU','9988776655','techzone@gmail.com'),
('S0005','FinSmart Systems','9 Park Street, Kolkata',NULL,'9090909090','finsmart@gmail.com');

Select * from SUPPLIER;

-- CUST --
create table CUST(CID char(5) primary key,
CNAME varchar(20) not null,
ADDRESS varchar(30) not null,
CITY varchar(15) not null,
PHONE char(10) not null,
EMAIL varchar(30) not null,
DOB date check(DOB<'2000-01-01'));

insert into CUST values('C0001','Rahul Sharma','12 Lajpat Nagar','DELHI','9812345670','rahul.sharma@gmail.com','1995-06-15'),
('C0002','Priya Verma','45 Karol Bagh','DELHI','9823456781','priya.verma@gmail.com','1992-09-21'),
('C0003','Amit Singh','78 Sector 15','NOIDA','9834567892','amit.singh@gmail.com','1990-01-10'),
('C0004','Neha Gupta','23 Rajouri Garden','DELHI','9845678903','neha.gupta@gmail.com','1996-12-05'),
('C0005','Rohit Mehta','56 Andheri West','MUMBAI','9856789014','rohit.mehta@gmail.com','1993-03-18'),
('C0006','Sneha Reddy','89 Banjara Hills','HYDERABAD','9867890125','sneha.reddy@gmail.com','1994-07-25'),
('C0007','Karan Malhotra','34 Connaught Place','DELHI','9878901236','karan.malhotra@gmail.com','1991-11-30'),
('C0008','Anjali Nair','67 MG Road','BENGALURU','9889012347','anjali.nair@gmail.com','1997-04-12'),
('C0009','Vikram Patel','90 Satellite Road','AHMEDABAD','9890123458','vikram.patel@gmail.com','1992-08-08'),
('C0010','Pooja Kapoor','11 Civil Lines','JAIPUR','9901234569','pooja.kapoor@gmail.com','1996-02-14');

Select * from CUST;

-- ORDERS --
create table ORDERS(OID char(5) primary key,
ODATE date,
CID char(5),
PID char(5),
OQTY int check(OQTY>=1),
foreign key(CID) references CUST(CID),
foreign key(PID) references PRODUCT(PID));

INSERT INTO ORDERS VALUES ('O0001','2026-04-20','C0001','P0005',1),
('O0002','2026-04-21','C0003','P0002',2),
('O0003','2026-04-22','C0005','P0008',1),
('O0004','2026-04-23','C0002','P0003',3),
('O0005','2026-04-24','C0007','P0010',2);

Select * from ORDERS;

-- STOCK --
create table STOCK(PID char(5) references PRODUCT(PID),
SQTY int check(SQTY>=0),
ROL int check(ROL>0),
MOQ int check(MOQ>=5));

INSERT INTO STOCK VALUES('P0001',50,10,5),
('P0002',30,8,5),
('P0003',20,5,5),
('P0004',100,20,10),
('P0005',15,5,5),
('P0006',25,7,5),
('P0007',18,6,5),
('P0008',10,3,5),
('P0009',40,10,5),
('P0010',22,6,5);

Select * from Stock;