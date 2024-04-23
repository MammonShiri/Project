
Create Table EmployeeInformation
(
EmployeeID Int,
FirstName Varchar (50),
LastName Varchar (50),
Age Int,
Gender Varchar (50),
BirthDay Varchar (50),
)

Insert Into EmployeeInformation Values

	(1001, 'John', 'Doe', 25, 'Male', 'January 2, 1999'),
    (1002, 'Jane', 'Smith', 28, 'Female', 'December 15, 1996'),
    (1003, 'Michael', 'Scott', 40, 'Male', 'March 22, 1984'),
    (1004, 'Pam', 'Beesly', 32, 'Female', 'July 5, 1992'),
    (1005, 'Ryan', 'Howard', 27, 'Male', 'November 10, 1997'),
    (1006, 'Angela', 'Martin', 35, 'Female', 'September 3, 1989'),
    (1007, 'Dwight', 'Schrute', 37, 'Male', 'May 15, 1987'),
    (1008, 'Kelly', 'Kapoor', 29, 'Female', 'August 7, 1995'),
    (1009, 'Andy', 'Bernard', 33, 'Male', 'April 28, 1991'),
    (1010, 'Holly', 'Flax', 36, 'Female', 'June 12, 1988'),
    (1011, 'Stanley', 'Hudson', 45, 'Male', 'February 19, 1979'),
    (1012, 'Meredith', 'Palmer', 38, 'Female', 'October 31, 1986'),
    (1013, 'Oscar', 'Martinez', 42, 'Male', 'July 2, 1982'),
    (1014, 'Phyllis', 'Vance', 50, 'Female', 'November 22, 1974'),
    (1015, 'Kevin', 'Malone', 31, 'Male', 'December 4, 1993'),
    (1016, 'Creed', 'Bratton', 60, 'Male', 'August 27, 1963'),
    (1017, 'Jan', 'Levinson', 45, 'Female', 'April 4, 1979'),
    (1018, 'Toby', 'Flenderson', 41, 'Male', 'January 17, 1983'),
    (1019, 'Erin', 'Hannon', 26, 'Female', 'March 9, 1998'),
    (1020, 'Gabe', 'Lewis', 34, 'Male', 'June 30, 1990')

----------------------------------------------------------------------------------------------------------------------------------------

Create Table EmployeeSalary
(
EmployeeID Int,
DateOfHired Datetime,
JobTitle Varchar (50),
Salary Int
)

Insert Into EmployeeSalary Values
	(1001, '2024-02-05', 'Manager', 95000),
	(1002, '2016-10-15', 'Sales Associate', 80000),
    (1003, '2019-03-22', 'Senior Engineer', 110000),
    (1004, '2022-07-05', 'Marketing Specialist', 75000),
    (1005, '2019-11-10', 'IT Analyst', 90000),
    (1006, '2021-09-03', 'HR Coordinator', 78000),
    (1007, '2023-05-15', 'Operations Manager', 105000),
    (1008, '2023-08-07', 'Customer Service Representative', 65000),
    (1009, '2018-04-28', 'Financial Analyst', 95000),
    (1010, '2016-06-12', 'Executive Assistant', 85000),
    (1011, '2020-02-19', 'Project Manager', 120000),
    (1012, '2021-10-31', 'Research Scientist', 92000),
    (1013, '2022-07-02', 'Accountant', 98000),
    (1014, '2019-11-22', 'Director of Sales', 130000),
    (1015, '2019-12-04', 'Software Engineer', 100000),
    (1016, '2019-08-27', 'Senior Consultant', 140000),
    (1017, '2020-04-04', 'Marketing Director', 115000),
    (1018, '2013-01-17', 'IT Manager', 110000),
    (1019, '2019-03-09', 'Administrative Assistant', 70000),
    (1020, '2017-06-30', 'Product Manager', 105000)

