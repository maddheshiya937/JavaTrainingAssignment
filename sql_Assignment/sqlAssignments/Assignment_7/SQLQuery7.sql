use Company;
--Company wants to know which record is inserted into employee table or 
--deleted from employee table. Help the company by creating After Insert 
--and After Delete Trigger on Employee table which will select newly inserted record or 
--deleted record of Employee table and add that record in Employee_Test_Audit table. 
--You must create Employee_Test_Audit table also with relevant columns.

Create table Employee_Test_Audit (Id int, AuditData nvarchar(500));
select * from Employees;
--Drop table  Employee_Test_Audit;
use Company;
GO
Alter Trigger tr_Employees_ForInsert
on Employees
For Insert
As
BEGIN
     Declare @Id int
	 Select @Id= Emp_Id from Inserted
     
	 insert into Employee_Test_Audit
	 values(@Id,('New Employee with id ='+cast(@Id as nchar(10))+'is added at'+cast(GETDATE() as nvarchar)))

END
Go

insert into Employees values(122,'Mayank','Singh','Trichy','2019-02-01',75000,3,1);
select * from Employees;
Select * from Employee_Test_Audit;


Go
Create Trigger tr_Employees_ForDelete
on Employees
For Delete
As
BEGIN
     Declare @Id int
	 Select @Id= Emp_Id from deleted
     
	 insert into Employee_Test_Audit
	 values(@Id,('AnE Existing Employee with id ='+cast(@Id as nchar(10))+'is deleted at'
	 +cast(GETDATE() as nvarchar)))

END
Go

Delete from Employees where Emp_Id=122;
select * from Employees;
Select * from Employee_Test_Audit;

