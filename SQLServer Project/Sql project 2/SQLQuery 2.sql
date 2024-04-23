/*
1. Retrieve a list of employees along with their basic information such as Fullname, gender, date of birth, department, job title, and salary, sorted by salary in descending order.

2. Calculate the total number of employees in each department and display the result along with the department name.

3. Retrieve a list of employees who have the same job title and are in the same department.

4. Calculate the average salary of employees in each department, and display the result along with the department name.

5. Retrieve a list of employees who have a salary that is greater than the average salary of their respective departments.

6. Calculate the total salary of all employees in the company.

7. Calculate the median salary of all employees in the company.

8. Identify the department with the highest average age of employees,and then determine the top 3 job titles with the highest average salary in that department.

9. Calculate the maximum salary for each department, and display the result along with the department name.

10. Calculate the minimum and maximum salary for each job title, and display the result along with the job title.
*/

----------------------------------------------------------------------------------------------------------------------------------------

Select *
From SQLIntermediate.dbo.EmployeeInfo As EmpInfo
Join SQLIntermediate.dbo.EmployeeSalary As EmpSal
 on  Empinfo.EmployeeID = EmpSal.EmployeeID

 ----------------------------------------------------------------------------------------------------------------------------------------

 /* 
1. Retrieve a list of employees along with their basic information such as Fullname, gender, date of birth, department, job title, and salary, sorted by salary in descending order.
 */

 Select FirstName + ' ' + LastName As FullName, Gender, DateOfBirth, Department, Jobtitle, Salary
From SQLIntermediate.dbo.EmployeeInfo As EmpInfo
Join SQLIntermediate.dbo.EmployeeSalary As EmpSal
 on  Empinfo.EmployeeID = EmpSal.EmployeeID
 Order by Salary desc

 --!Clear!--

 /*
 2. Calculate the total number of employees in each department and display the result along with the department name.
 */

 Select Department, COUNT(department) As TotalCountOFEmoloyeesPerDepartment
 From SQLIntermediate.dbo.EmployeeSalary
 Group by Department

  --!Clear!--

  /*
3. Retrieve a list of employees who have the same job title and are in the same department.
 */
 Drop table if exists samejob
 Create Table samejob
 (
 FirstName Varchar (50),
 LastName Varchar (50),
 Gender Varchar (50),
 Age int,
 Jobtitle Varchar (50),
 department Varchar (50),
 SameJobtitleInDepartment int
 )


 insert into samejob
 Select firstname,LastName,Gender,Age,  Jobtitle, Department,count(*) Over (Partition By jobtitle ) As SameJobtitleInDepartment 
From SQLIntermediate.dbo.EmployeeInfo As EmpInfo
Join SQLIntermediate.dbo.EmployeeSalary As EmpSal
 on  Empinfo.EmployeeID = EmpSal.EmployeeID
 order by SameJobtitleInDepartment desc 


 select FirstName + ' ' + LastName As FullName, Gender, Age, Jobtitle, Department
 From samejob
 Where SameJobtitleInDepartment > 1
order by department

  /*
4. Calculate the average salary of employees in each department, and display the result along with the department name.
 */

 Select Department, Avg(salary) As AvgSalary
From SQLIntermediate.dbo.EmployeeInfo As EmpInfo
Join SQLIntermediate.dbo.EmployeeSalary As EmpSal
 on  Empinfo.EmployeeID = EmpSal.EmployeeID
 Group by Department

  --!Clear!--
 
  /*
5. Retrieve a list of employees who have a salary that is greater than the average salary of their respective departments.
 */

 Drop table if exists #temp_avgsal
 Create Table #temp_avgsal
(
FirstName Varchar (50),
LastName Varchar (50),
JobTitle Varchar (50),
Department Varchar (50),
Salary Int,
AverageSalaryPerDepartment Int,
)

insert into #temp_avgsal
 Select FirstName,LastName,Jobtitle,Department,Salary, AVG(salary) over (partition by Department) as AverageSalaryPerDepartment
From SQLIntermediate.dbo.EmployeeInfo As EmpInfo
Join SQLIntermediate.dbo.EmployeeSalary As EmpSal
 on  Empinfo.EmployeeID = EmpSal.EmployeeID
 

 Select EmpInfo.FirstName + ' ' + EmpInfo.LastName as FullName, EmpInfo.Gender, EmpInfo.Age, EmpSal.Jobtitle, EmpSal.Department, EmpSal.Salary ,AverageSalaryPerDepartment
From SQLIntermediate.dbo.EmployeeInfo As EmpInfo
Join SQLIntermediate.dbo.EmployeeSalary As EmpSal
 on  Empinfo.EmployeeID = EmpSal.EmployeeID
Join #temp_avgsal on #temp_avgsal.FirstName = EmpInfo.FirstName
 where EmpSal.Salary > #temp_avgsal.AverageSalaryPerDepartment

  --!Clear!--

/*
6. Calculate the total salary of all employees in the company.
*/

 Select Sum(Salary) As TotalSalaryForEmployees
From SQLIntermediate.dbo.EmployeeInfo As EmpInfo
Join SQLIntermediate.dbo.EmployeeSalary As EmpSal
 on  Empinfo.EmployeeID = EmpSal.EmployeeID

 /*
 7. Calculate the median salary of all employees in the company.
 */


Select distinct PERCENTILE_DISC(.5) Within Group (order by Salary)
Over (Partition By 1) As MedianSalaryOfallCompany
from SQLIntermediate.dbo.EmployeeSalary

/* 
7.5 Calculate the median salary of Each Department in the company. 
*/

Select distinct Department, PERCENTILE_DISC(.5) Within Group (order by Salary)
Over (Partition By Department) As MedianSalaryPerDepartment
From SQLIntermediate.dbo.EmployeeInfo As EmpInfo
Join SQLIntermediate.dbo.EmployeeSalary As EmpSal
 on  Empinfo.EmployeeID = EmpSal.EmployeeID
Order by MedianSalaryPerDepartment desc

--!Clear!--

/*
8. Identify the department with the highest average age of employees,and then determine the top 3 job titles with the highest average salary in that department.
*/
Drop table if exists #HighestAGE
Create Table  #HighestAGE
(
Department Varchar (50),
AvgAge int
)

insert into #highestAGE
Select top 1 Department, avg(Age) AS AverageAgePerDepartment
From SQLIntermediate.dbo.EmployeeInfo As EmpInfo
Join SQLIntermediate.dbo.EmployeeSalary As EmpSal
 on  Empinfo.EmployeeID = EmpSal.EmployeeID
 Group by Department 
 order by AverageAgePerDepartment desc
 

 --Select*
 --From #HighestAGE
 
 Select Distinct Jobtitle, EmpSal.Department, Avg(Salary) over (partition By Jobtitle) as HighestAverageSalaryPerDepartment
From SQLIntermediate.dbo.EmployeeInfo As EmpInfo
Join SQLIntermediate.dbo.EmployeeSalary As EmpSal
 on  Empinfo.EmployeeID = EmpSal.EmployeeID
 join #HighestAGE on #HighestAGE.Department = EmpSal.Department
 where EmpSal.Department = #HighestAGE.Department
 			
--!Clear!--
 
 /*
 9. Calculate the maximum salary for each department, and display the result along with the department name.
 */


 Select Department, Max(salary) As MaxSalaryPerDepartment
From SQLIntermediate.dbo.EmployeeInfo As EmpInfo
Join SQLIntermediate.dbo.EmployeeSalary As EmpSal
 on  Empinfo.EmployeeID = EmpSal.EmployeeID
 Group By Department

 --!Clear!--

 /*
 10. Calculate the minimum and maximum salary for each job title, and display the result along with the job title.
 */

  Select Jobtitle, Min(salary) AS  MinimumSalary, Max(salary) As MaxSalaryPerDepartment
From SQLIntermediate.dbo.EmployeeInfo As EmpInfo
Join SQLIntermediate.dbo.EmployeeSalary As EmpSal
 on  Empinfo.EmployeeID = EmpSal.EmployeeID
 Group By Jobtitle

  --!Clear!--

