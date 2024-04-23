/*
1.Write a query to display the total number of employees in each department.

2.Write a query to display the total number of male and female employees in each department.

3.Write a query to display the average age of employees in each department.

4.Write a query to display the highest salary among employees of each gender in each department.

5.Write a query to display the top 5 departments with the highest average salary.

6.Write a query to display the top 5 departments with the highest percentage of female employees.

7.Write a query to display the age distribution of employees in each department (e.g., how many employees are between 20-30, 31-40, etc.).

8.Write a query to display the average salary of employees in each age range (e.g., 20-30, 31-40, etc.).

9.Write a query to display the number of employees who have been with the company for less than 1 year, 1-5 years, 6-10 years, and more than 10 years.

10.Write a query to display the top 5 departments with the highest percentage of employees who have a college degree.
*/

----------------------------------------------------------------------------------------------------------------------------------------

Select *
From SQLAdvanced.dbo.EmployeeInfo As Info
Join SQLAdvanced.dbo.EmployeeSalary As Sal
On Info.EmployeeID = Sal.EmployeeID

----------------------------------------------------------------------------------------------------------------------------------------

/*
1.Write a query to display the total number of employees in each department.
*/

Select Department, count(department) As TotalNumberOfEmployees
From SQLAdvanced.dbo.EmployeeInfo As Info
Join SQLAdvanced.dbo.EmployeeSalary As Sal
On Info.EmployeeID = Sal.EmployeeID
Group By Department

--!clear!--

/*
2.Write a query to display the total number of male and female employees in each department.
*/

Select Department,Gender, count(Gender) As TotalNumberOfGenderPerDepartment
From SQLAdvanced.dbo.EmployeeInfo As Info
Join SQLAdvanced.dbo.EmployeeSalary As Sal
On Info.EmployeeID = Sal.EmployeeID
Group By Department , Gender
order by Department

--!clear!--

/*
3.Write a query to display the average age of employees in each department.
*/

Select Department, avg(Age) As AverageAgePerDepartment
From SQLAdvanced.dbo.EmployeeInfo As Info
Join SQLAdvanced.dbo.EmployeeSalary As Sal
On Info.EmployeeID = Sal.EmployeeID
Group By Department 

--!clear!--

/*
4.Write a query to display the highest salary among employees of each gender in each department.
*/

Select Department,gender, MAX(Salary) As HighestSalary 
From SQLAdvanced.dbo.EmployeeInfo As Info
Join SQLAdvanced.dbo.EmployeeSalary As Sal
On Info.EmployeeID = Sal.EmployeeID
Group By Department,Gender
order by Department

--!clear!--

/*
5.Write a query to display the top 5 departments with the highest average salary.
*/

Select Top 5 Department, avg(Salary) As AverageSalaryPerDepartment
From SQLAdvanced.dbo.EmployeeInfo As Info
Join SQLAdvanced.dbo.EmployeeSalary As Sal
On Info.EmployeeID = Sal.EmployeeID
Group By Department 
order by AverageSalaryPerDepartment desc

--!clear!--

/*
6.Write a query to display the top 5 departments with the highest percentage of female employees.
*/
With CTE_Female_Count as 
(
Select Department,count (Gender) AS Female_Count
From SQLAdvanced.dbo.EmployeeInfo As Info
Join SQLAdvanced.dbo.EmployeeSalary As Sal
On Info.EmployeeID = Sal.EmployeeID
Where Gender = 'Female'
Group by Department 
) ,
 	CTE_TOTAL_COUNT as 
(
Select Department,count (*) AS Total_Count
From SQLAdvanced.dbo.EmployeeInfo As Info
Join SQLAdvanced.dbo.EmployeeSalary As Sal
On Info.EmployeeID = Sal.EmployeeID
Group by Department 
)

Select CTE_TOTAL_COUNT.Department,
	Round((100 * CTE_Female_Count.Female_Count / CTE_TOTAL_COUNT.Total_Count), 2) As Female_Percentage
	From CTE_Female_Count
	join CTE_TOTAL_COUNT 
	on CTE_Female_Count.department = CTE_TOTAL_COUNT.department
	Order by Female_Percentage desc
	OFFSET 0 rows fetch next 5 rows only;

	--!clear!--

/*
7.Write a query to display the age distribution of employees in each department (e.g., how many employees are between 20-30, 31-40, etc.).
*/

Drop Table If exists #Age_Distribution
Create Table #Age_Distribution
(
EmployeeID Int,
FirstName Varchar(50),
LastName Varchar(50),
Gender Varchar(50),
Age Int,
Jobtitle Varchar(50),
Department Varchar(50),
Salary Int,
CollegeDegree Varchar(50),
AgeDistribution Varchar(50)
)

insert into #Age_Distribution
Select info.EmployeeID,FirstName,LastName,Gender,Age,Jobtitle,Department,Salary,CollegeDegree,
Case  
		When Age < 20 Then 'Kyutty'
		When Age Between 20 and 30 Then 'Young'
		When Age Between 31 and 40 Then 'Young Adult'
		When Age Between 41 and 50 Then 'Adult'
		When Age Between 51 and 60 Then 'Old Age Adult'
		Else 'Too old'
End as Employee_Age_Called
From SQLAdvanced.dbo.EmployeeInfo As Info
Join SQLAdvanced.dbo.EmployeeSalary As Sal
On Info.EmployeeID = Sal.EmployeeID

--!clear!--

--Select *
--From #Age_Distribution


Select Department,AgeDistribution,COUNT(AgeDistribution) As Count_Of_Age_Distribution_Per_Department
From #Age_Distribution
Group by Department,AgeDistribution
Order By Department

--!clear!--

/*
8.Write a query to display the average salary of employees in each age range (e.g., 20-30, 31-40, etc.).
*/

With #Age_Rage AS 
(
Select info.EmployeeID,FirstName,LastName,Gender,Age,Jobtitle,Department,Salary,CollegeDegree,
Case  
		When Age < 20 Then 'Kyutty'
		When Age Between 20 and 30 Then 'Young'
		When Age Between 31 and 40 Then 'Young Adult'
		When Age Between 41 and 50 Then 'Adult'
		When Age Between 51 and 60 Then 'Old Age Adult'
		Else 'Too old'
End as Employee_Age_Called
From SQLAdvanced.dbo.EmployeeInfo As Info
Join SQLAdvanced.dbo.EmployeeSalary As Sal
On Info.EmployeeID = Sal.EmployeeID
)

Select Employee_Age_Called,Avg(Salary) As Average_Salary,
Case
	When Employee_Age_Called = 'kyutty' Then '20 Years Old Below'
	When Employee_Age_Called = 'Young' Then 'Between 21 - 30  years Old'
	When Employee_Age_Called = 'Young Adult' Then 'Between 31 - 40  years Old'
    When Employee_Age_Called = 'Adult' Then 'Between 41 - 50  years Old'
	When Employee_Age_Called = 'Old Age Adult' Then 'Between 51 - 60  years Old'
	Else '61+'
End as AgeRage
From #Age_Rage
Group By Employee_Age_Called
Order By Average_Salary Desc

--!clear!--

/*
9.Write a query to display the number of employees who have been with the company for less than 1 year, 1-5 years, 6-10 years, and more than 10 years.
*/

With #CTE_Employee_Hired_Age As 
(
Select info.EmployeeID,FirstName,LastName,Gender,Age,Jobtitle,Department,Salary,CollegeDegree,
Case
	When  DATEDIFF(YEAR,DateOfHired,GETDATE()) < 1 Then 'Less than One Year'
	When  DATEDIFF(YEAR,DateOfHired,GETDATE()) < 5 Then 'Between 1 year - 5 Years'
	When  DATEDIFF(YEAR,DateOfHired,GETDATE()) < 10 Then 'Between 5 year - 10 Years'
	else 'More Than 10 Years' 
End as Employee_Hired_Age
From SQLAdvanced.dbo.EmployeeInfo As Info
Join SQLAdvanced.dbo.EmployeeSalary As Sal
On Info.EmployeeID = Sal.EmployeeID
)

Select Employee_Hired_Age,Count(Employee_Hired_Age) As Count_of_Employee_Hired_Age
From #CTE_Employee_Hired_Age
Join SQLAdvanced.dbo.EmployeeSalary As Sal
On #CTE_Employee_Hired_Age.EmployeeID = Sal.EmployeeID
Group by Employee_Hired_Age

--!clear!--

/*
10.Write a query to display the top 5 departments with the highest percentage of employees who have a college degree.
*/


Select Department,collegeDegree,COUNT(collegeDegree) As College_Degree_Holder
From SQLAdvanced.dbo.EmployeeInfo As Info
Join SQLAdvanced.dbo.EmployeeSalary As Sal
On Info.EmployeeID = Sal.EmployeeID
where collegeDegree = 'Degree Holder'
Group by Department, collegeDegree
Order by College_Degree_Holder desc
OFFSET 0 rows fetch next 5 rows only;


	----OR----

	With CTE_Degree_Holder As 
(
Select Department,count(CollegeDegree) As DegreeHolder
From SQLAdvanced.dbo.EmployeeInfo As Info
Join SQLAdvanced.dbo.EmployeeSalary As Sal
On Info.EmployeeID = Sal.EmployeeID
Where CollegeDegree = 'Degree Holder'
Group by Department
) ,  
	CTE_Total_Count as 
(
Select Department,count (*) AS Total_Count
From SQLAdvanced.dbo.EmployeeInfo As Info
Join SQLAdvanced.dbo.EmployeeSalary As Sal
On Info.EmployeeID = Sal.EmployeeID
Group by Department 
)

Select CTE_Total_Count.Department,DegreeHolder,Total_Count,
	Round((100 * CTE_Degree_Holder.DegreeHolder / CTE_TOTAL_COUNT.Total_Count), 2) As Degree_Holder_Percentage
	From CTE_Degree_Holder
	join CTE_TOTAL_COUNT 
	on CTE_Degree_Holder.department = CTE_TOTAL_COUNT.department
	Order by Degree_Holder_Percentage desc
	OFFSET 0 rows fetch next 5 rows only;


	--!clear!--