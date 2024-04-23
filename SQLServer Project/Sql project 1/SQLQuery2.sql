/*
Basic SQL Project For Practice

Here are a few basic problems related to employee demographics and salary that can be solved using SQL:

1) Retrieve a list of employees along with their basic information such as name, gender, date of birth, and salary.

2) Calculate the average salary of all employees in the company.

3) Retrieve a list of employees who earn more than $100,000 per year.

4) Retrieve a list of employees who earn less than $50,000 per year and have been with the company for more than 5 years.

5) Calculate the total number of male and female employees in the company.

6) Calculate the average salary of male and female employees separately.

7) Retrieve a list of employees who have joined the company in the last 6 months.

8) Retrieve a list of employees who have a job title of 'Manager' and earn more than $80,000 per year.

9) Calculate the average salary of employees by department.

10) Retrieve a list of employees who have the highest salary in their respective departments. 
*/
Select *
From SQLBasic.dbo.EmployeeInformation as EmpInfo
Join SQLBasic.dbo.EmployeeSalary as EmpSalary
on EmpInfo.EmployeeID = EmpSalary.EmployeeID
----------------------------------------------------------------------------------------------------------------------------------------
/*
1) Retrieve a list of employees along with their basic information such as name, gender, date of birth, and salary.
*/

Select LastName +' '+FirstName As FullName,Gender,BirthDay,Salary
From SQLBasic.dbo.EmployeeInformation as EmpInfo
Inner Join SQLBasic.dbo.EmployeeSalary as EmpSal
on EmpInfo.EmployeeID = EmpSal.EmployeeID 

/*
2) Calculate the average salary of all employees in the company.
*/

Select Avg(salary) As AverageSalary
From SQLBasic.dbo.EmployeeSalary


/*
3) Retrieve a list of employees who earn more than $100,000 per year.
*/

Select EmpInfo.EmployeeID,FirstName,LastName,Age,Gender,JobTitle,Salary
From SQLBasic.dbo.EmployeeInformation As EmpInfo
Inner Join SQLBasic.dbo.EmployeeSalary As EmpSal 
On EmpInfo.EmployeeID = EmpSal.EmployeeID
Where Salary > '100000'
Order By Salary

/*
4) Retrieve a list of employees who earn less than $75,000 per year and have been with the company for more than 5 years.
*/

Select FirstName + ' ' + LastName As FullName , Age , Gender ,BirthDay ,DateOfHired,JobTitle,Salary
From SQLBasic.dbo.EmployeeInformation as EmpInfo
Join SQLBasic.dbo.EmployeeSalary as EmpSal
on EmpInfo.EmployeeID = EmpSal.EmployeeID
where Salary > 75000
	and DATEDIFF (YEAR,DateOfHired,getdate()) >= 5
order by Salary desc

/*
5) Calculate the total number of male and female employees in the company.
*/

Select Gender, Count(Gender) As TotalNumberOfPeopleBaseOnGender
From SQLBasic.dbo.EmployeeInformation as EmpInfo
Join SQLBasic.dbo.EmployeeSalary as EmpSalary
on EmpInfo.EmployeeID = EmpSalary.EmployeeID
Group by Gender

/*
6) Calculate the average salary of male and female employees separately.
*/

Select Gender,avg(salary) As AverageSalaryOfEachGender
From SQLBasic.dbo.EmployeeInformation as EmpInfo
Join SQLBasic.dbo.EmployeeSalary as EmpSalary
on EmpInfo.EmployeeID = EmpSalary.EmployeeID
Group by Gender

/* For Male Average Salary */
Select avg(salary) As AverageSalaryOfMale
From SQLBasic.dbo.EmployeeInformation as EmpInfo
Join SQLBasic.dbo.EmployeeSalary as EmpSalary
on EmpInfo.EmployeeID = EmpSalary.EmployeeID
where Gender = 'Male'

/* For Female Average Salary */
Select avg(salary) As AverageSalaryOfFemale
From SQLBasic.dbo.EmployeeInformation as EmpInfo
Join SQLBasic.dbo.EmployeeSalary as EmpSalary
on EmpInfo.EmployeeID = EmpSalary.EmployeeID
where Gender = 'Female'

/*
7) Retrieve a list of employees who have joined the company in the last 6 months.
*/

Select FirstName + ' ' + LastName As FullName , Age , Gender ,BirthDay ,DateOfHired,JobTitle,Salary
From SQLBasic.dbo.EmployeeInformation as EmpInfo
Join SQLBasic.dbo.EmployeeSalary  as EmpSal
on EmpInfo.EmployeeID = EmpSal.EmployeeID
where DATEDIFF (Month,DateOfHired,Getdate()) < 6

/*
8) Retrieve a list of employees who have a job title of 'Manager' and earn more than $80,000 per year.
*/

Select FirstName + ' ' + LastName As FullName , Age , Gender ,BirthDay ,JobTitle,Salary
From SQLBasic.dbo.EmployeeInformation as EmpInfo
Join SQLBasic.dbo.EmployeeSalary  as EmpSal
on EmpInfo.EmployeeID = EmpSal.EmployeeID
where JobTitle like '%Manager' and salary > 80000
order by Salary desc

/*
9) Calculate the average salary of employees by department.
*/
Select JobTitle, avg(salary) As AverageSalaryOfEmoyeesPerDepartment
From SQLBasic.dbo.EmployeeInformation as EmpInfo
Join SQLBasic.dbo.EmployeeSalary as EmpSalary
on EmpInfo.EmployeeID = EmpSalary.EmployeeID
Group by JobTitle

/*
10) Retrieve a list of employees who have the highest salary in their respective departments. 
*/
Drop Table #Temp_HigestSalary


Create Table #Temp_HigestSalary
(
Department Varchar(50),
HighestSalary Int 
)

Insert into #Temp_HigestSalary
Select JobTitle, MAX(salary) As HighestSalaryOfEmoyeesPerDepartment
From SQLBasic.dbo.EmployeeInformation as EmpInfo
Join SQLBasic.dbo.EmployeeSalary as EmpSalary
on EmpInfo.EmployeeID = EmpSalary.EmployeeID
Group by JobTitle
order by max(Salary) desc


Select FirstName + ' ' + LastName As FullName , Age , Gender  ,Department,HighestSalary
From SQLBasic.dbo.EmployeeInformation as EmpInfo
Join SQLBasic.dbo.EmployeeSalary  as EmpSal
on EmpInfo.EmployeeID = EmpSal.EmployeeID
join #Temp_HigestSalary as MaxSalary
on EmpSal.JobTitle = MaxSalary.Department
order by HighestSalary desc