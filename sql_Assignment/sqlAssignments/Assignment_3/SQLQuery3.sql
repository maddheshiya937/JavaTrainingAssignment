use Company;
select * from Departments;
select *from Employees;
select *from BRANCHES;

select Departments.DEPT_NAME as Department,sum(Salary) as Salary from Employees,Departments where Employees.DID=Departments.DEPT_ID
group by Departments.DEPT_NAME;

select Departments.DEPT_NAME as Department,min(Salary) as Miminum_Salary from Employees,Departments where Employees.DID=Departments.DEPT_ID
group by Departments.DEPT_NAME;

select Departments.DEPT_NAME as Department,max(Salary) as Maximum_Salary from Employees,Departments where Employees.DID=Departments.DEPT_ID
group by Departments.DEPT_NAME;

select Departments.DEPT_NAME as Department,Avg(Salary) as Average_Salary from Employees,Departments where Employees.DID=Departments.DEPT_ID
group by Departments.DEPT_NAME;

select Departments.DEPT_NAME as Department ,Count(Departments.DEPT_ID) as Total_Emp from Employees,Departments where Employees.DID=Departments.DEPT_ID
group by Departments.DEPT_NAME;

select BRANCHES.BRACH_NAME as Branch,Departments.DEPT_NAME as Department, Sum(Employees.Salary) as Total_Salary
from  Employees,Departments,BRANCHES where Employees.DID=Departments.DEPT_ID and BRANCHES.BID=Employees.DID
group by Departments.DEPT_NAME,BRANCHES.BRACH_NAME;






