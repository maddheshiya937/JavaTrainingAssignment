Use Company;
GO
create function numberOFEmployee (@Branch nchar(20))
returns int
as
Begin
     Declare @Total_Employee int
	 Select @Total_Employee = count(BRANCHES.BRACH_NAME) from Employees,BRANCHES 
	 where Employees.BID=BRANCHES.BID and BRANCHES.BRACH_NAME=@Branch;
     return @Total_Employee;
END
GO 

select BRANCHES.BRACH_NAME,count(BRANCHES.BRACH_NAME) from Employees,BRANCHES 
where Employees.BID=BRANCHES.BID
group by BRANCHES.BRACH_NAME;

select dbo.numberOFEmployee('Chennai') AS Total_Employee;
select dbo.numberOFEmployee('Delhi') AS Total_Employee;
select dbo.numberOFEmployee('Kolkata') AS Total_Employee;
select dbo.numberOFEmployee('Mumbai') AS Total_Employee;

Go
create function E_Name(@Branch nchar)
returns nchar
as
Begin
     Declare @Employee_name nchar
	 Select @Employee_name = Concat(Emp_FirstName,'',Emp_LastName) 
	 from Employees,BRANCHES 
	 where Employees.BID=BRANCHES.BID and BRANCHES.BRACH_NAME=@Branch
	 and DATEDIFF(year,DOJ,GetDate())>1;
     return @Employee_name;
END
GO

select dbo.E_Name('Delhi') AS Employee_Name;
select dbo.E_Name('Chennai') AS Employee_Name;
select dbo.E_Name('Kolkata') AS Employee_Name;
select dbo.E_Name('Mumbai') AS Employee_Name;

Select Concat(Emp_FirstName,Emp_LastName) as Employee_Name
from Employees,BRANCHES 
where Employees.BID=BRANCHES.BID and BRANCHES.BRACH_NAME='Mumbai'
and DATEDIFF(year,DOJ,GetDate())>1;




select * from Employees;






select Count(*) from Employees,BRANCHES 
where Employees.Emp_Id=BRANCHES.BID and BRANCHES.BRACH_NAME='Mumbai';
	 