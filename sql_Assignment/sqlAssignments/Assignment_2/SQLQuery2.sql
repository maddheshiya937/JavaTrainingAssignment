use Company;

create table Employees(
 Emp_Id int primary key not null,
 Emp_FirstName nchar(20) not null,
 Emp_LastName nchar(20) not null,
 Emp_City nchar(20) not null,
 DOJ date not null,
 Salary money not null,
 DID int  foreign key references Departments(Dept_ID),
 BID int  foreign key references Branches(BID)
);

select * from  Employees;

insert into Employees(Emp_Id,Emp_FirstName,Emp_LastName,Emp_City,DOJ,Salary,DID,BID) values
(101,'Roli','Singh','Kaisa','01-08-2015',25000,1,2);
insert into Employees(Emp_Id,Emp_FirstName,Emp_LastName,Emp_City,DOJ,Salary,DID,BID) values
(102,'Abhay','Gupta','Kaisa','01-01-2016',35000,2,1);
insert into Employees(Emp_Id,Emp_FirstName,Emp_LastName,Emp_City,DOJ,Salary,DID,BID) values
(103,'Amit','Gupta','Kushinagar','01-08-2017',40000,3,3);
insert into Employees(Emp_Id,Emp_FirstName,Emp_LastName,Emp_City,DOJ,Salary,DID,BID) values
(104,'Atul','Gupta','Kushinagar','02-10-2017',55000,4,4);
insert into Employees(Emp_Id,Emp_FirstName,Emp_LastName,Emp_City,DOJ,Salary,DID,BID) values
(105,'Neha','Singh','Padrauna','02-10-2019',45000,5,1);
insert into Employees(Emp_Id,Emp_FirstName,Emp_LastName,Emp_City,DOJ,Salary,DID,BID) values
(106,'Ruchi','Gupta','Kaisa','01-09-2016',55000,6,2);
insert into Employees(Emp_Id,Emp_FirstName,Emp_LastName,Emp_City,DOJ,Salary,DID,BID) values
(107,'Rohit','Gupta','Deoria','01-10-2016',60000,1,3);
insert into Employees(Emp_Id,Emp_FirstName,Emp_LastName,Emp_City,DOJ,Salary,DID,BID) values
(108,'Himanshu','Singh','Deoria','02-08-2017',25000,2,4);
insert into Employees(Emp_Id,Emp_FirstName,Emp_LastName,Emp_City,DOJ,Salary,DID,BID) values
(109,'Pragati','Gupta','Sapaha','01-11-2016',55000,3,1);
insert into Employees(Emp_Id,Emp_FirstName,Emp_LastName,Emp_City,DOJ,Salary,DID,BID) values
(110,'Arvind','Kuswaha','Kaisa','03-12-2019',70000,4,2);
insert into Employees(Emp_Id,Emp_FirstName,Emp_LastName,Emp_City,DOJ,Salary,DID,BID) values
(111,'Anamika','Singh','Kaisa','01-08-2019',25000,5,3);
insert into Employees(Emp_Id,Emp_FirstName,Emp_LastName,Emp_City,DOJ,Salary,DID,BID) values
(112,'Anant','Singh','Kaisa','11-11-2018',80000,6,4);
insert into Employees(Emp_Id,Emp_FirstName,Emp_LastName,Emp_City,DOJ,Salary,DID,BID) values
(113,'Anuj','Singh','Kaisa','01-08-2015',25000,1,1);
insert into Employees(Emp_Id,Emp_FirstName,Emp_LastName,Emp_City,DOJ,Salary,DID,BID) values
(114,'Suraj','Gupta','Kaisa','01-08-2019',55000,2,2);
insert into Employees(Emp_Id,Emp_FirstName,Emp_LastName,Emp_City,DOJ,Salary,DID,BID) values
(115,'Balram','Patel','Kaisa','01-09-2016',60000,3,3);

update Employees
set Emp_FirstName='Aradhya'
where Emp_Id=110;

select * from  BRANCHES;
select * from  Departments;

select * from  Employees;

select *from Employees where DOJ>'2020-12-31';

Select Emp_ID,CONCAT(Emp_FirstName,' ',Emp_LastName),Emp_City,DOJ,Salary,DID,BID from Employees;

Select * from Employees , Departments where Employees.DID=Departments.DEPT_ID and
Departments.DEPT_NAME='SOFTWARE';

Select * from Employees , Departments where Employees.DID=Departments.DEPT_ID and
Departments.DEPT_NAME='SOFTWARE' and DOJ<'2021-01-01';

Select * from Employees , BRANCHES where Employees.DID=BRANCHES.BID and
BRANCHES.BRACH_NAME='MUMBAI';

Select * from Employees, Departments,BRANCHES where Employees.DID=BRANCHES.BID and Employees.BID=BRANCHES.BID
and BRANCHES.BRACH_NAME='MUMBAI' and Employees.DOJ<'2021-01-01' and Departments.DEPT_NAME='SOFTWARE'
and Employees.Salary>15000;

Select Emp_FirstName,Emp_LastName,DEPT_NAME from Employees,Departments 
where Employees.DID=Departments.DEPT_ID;

Delete from Employees where DID=6;
DELETE FROM Departments WHERE DEPT_ID=6;
select * from Departments;







