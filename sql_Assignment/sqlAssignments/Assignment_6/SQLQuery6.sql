use Company;
/*
Create and execute a procedure named ANewEmplyee to Insert a new Employee and return EmpID which is an auto 
generated column in Employees table.

2. Create a procedure named sp_RaiseSalary to increment 
salary by X% of employees whose current salary is <Y. 
X and Y will be input parameters with relevant names like inc,currentSalary.
*/

GO
create Procedure spANewEmplyee 
@Emp_id int,@Emp_FirstName nchar(20),@Emp_lastName nchar(20),
@Emp_city nchar(20),@DOJ Date,@salary money,@DID int,@BID int
as
Begin
  insert into Employees(Emp_Id,Emp_FirstName,Emp_LastName,Emp_City,DOJ,Salary,DID,BID)
  values (@Emp_id,@Emp_FirstName,@Emp_lastName,@Emp_city,@DOJ,@salary,@DID,@BID)
End
GO

Select * from Employees;
select * from Employees where Emp_Id=119;
Execute spANewEmplyee 120,'Rajan','Sah','kasia','2018-04-15',76000,4,2;

sp_helptext spANewEmplyee


GO
Alter PROCEDURE spRaiseSalary
@sal_inc int, @sal money
AS 
BEGIN 
UPDATE dbo.Employees
SET Salary = (Salary + (Salary*@sal_inc)/100)
WHERE Salary < @sal
END
Go

spRaiseSalary 10,50000.00;
select * from Employees;