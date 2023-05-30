use company;

Go
create view View_Department_MaxSalary as 
select Departments.DEPT_NAME as Department,
max(Employees.Salary) as Maximun_Salary from Departments,Employees where Departments.DEPT_ID=Employees.DID
group by Departments.DEPT_NAME;
Go

Select * from View_Department_MaxSalary;