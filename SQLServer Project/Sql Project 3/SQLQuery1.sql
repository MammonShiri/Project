Create Table EmployeeInfo
(
EmployeeID Int,
FirstName VarChar (50),
LastName VarChar (50),
Gender VarChar (50),
Age Int,
DateOfBirth VarChar (50)
)

Insert Into EmployeeInfo Values
(1001,'Haerin','Kang','Female',17,'May 15,2006'),
(1002, 'John', 'Doe', 'Male', 35, 'September 10, 1989'),
(1003, 'Emily', 'Smith', 'Female', 30, 'June 5, 1992'),
(1004, 'Alex', 'Johnson', 'Male', 42, 'August 20, 1980'),
(1005, 'Sophia', 'Brown', 'Female', 29, 'April 12, 1993'),
(1006, 'Daniel', 'Kim', 'Male', 38, 'July 8, 1986'),
(1007, 'Olivia', 'Jones', 'Female', 41, 'March 3, 1981'),
(1008, 'Michael', 'Lee', 'Male', 44, 'October 18, 1977'),
(1009, 'Emma', 'Miller', 'Female', 46, 'February 22, 1975'),
(1010, 'William', 'Park', 'Male', 32, 'December 7, 1989'),
(1011, 'Ava', 'Taylor', 'Female', 37, 'November 25, 1984'),
(1012, 'Christopher', 'Choi', 'Male', 43, 'January 14, 1979'),
(1013, 'Isabella', 'Johnson', 'Female', 29, 'September 2, 1993'),
(1014, 'Mason', 'Garcia', 'Male', 36, 'April 30, 1986'),
(1015, 'Abigail', 'Martinez', 'Female', 31, 'June 17, 1991'),
(1016, 'Ethan', 'Hernandez', 'Male', 30, 'August 9, 1991'),
(1017, 'Madison', 'Lopez', 'Female', 25, 'December 3, 1996'),
(1018, 'Logan', 'Wang', 'Male', 39, 'March 28, 1983'),
(1019, 'Chloe', 'Nguyen', 'Female', 28, 'July 11, 1994'),
(1020, 'Ryan', 'Smith', 'Male', 31, 'January 5, 1991'),
(1021, 'Ella', 'Wong', 'Female', 40, 'October 2, 1981'),
(1022, 'Jackson', 'Kim', 'Male', 42, 'February 14, 1980'),
(1023, 'Grace', 'Li', 'Female', 47, 'November 8, 1975'),
(1024, 'Nathan', 'Gonzalez', 'Male', 35, 'May 19, 1989'),
(1025, 'Lily', 'Davis', 'Female', 42, 'April 7, 1980'),
(1026, 'Aiden', 'Nguyen', 'Male', 31, 'August 3, 1991'),
(1027, 'Aria', 'Brown', 'Female', 45, 'June 5, 1977'),
(1028, 'Carter', 'Chen', 'Male', 26, 'September 10, 1998'),
(1029, 'Zoe', 'Nguyen', 'Female', 38, 'March 15, 1984'),
(1030, 'Liam', 'Garcia', 'Male', 33, 'October 28, 1989'),
(1031, 'Hannah', 'Wu', 'Female', 29, 'February 12, 1993'),
(1032, 'Lucas', 'Huang', 'Male', 29, 'December 25, 1994'),
(1033, 'Scarlett', 'Kim', 'Female', 22, 'November 17, 2001'),
(1034, 'Gabriel', 'Smith', 'Male', 41, 'January 9, 1983'),
(1035, 'Stella', 'Wang', 'Female', 35, 'September 22, 1989'),
(1036, 'Dylan', 'Martinez', 'Male', 37, 'April 10, 1985'),
(1037, 'Victoria', 'Johnson', 'Female', 34, 'June 27, 1988'),
(1038, 'Nicholas', 'Lopez', 'Male', 23, 'August 19, 2000'),
(1039, 'Aubrey', 'Wu', 'Female', 42, 'December 13, 1979'),
(1040, 'Evan', 'Garcia', 'Male', 42, 'March 8, 1980'),
(1041, 'Leah', 'Nguyen', 'Female', 44, 'July 21, 1978'),
(1042, 'Brandon', 'Smith', 'Male', 29, 'January 15, 1995'),
(1043, 'Nora', 'Wong', 'Female', 38, 'October 10, 1986'),
(1044, 'Jaxon', 'Kim', 'Male', 45, 'February 4, 1977'),
(1045, 'Ivy', 'Li', 'Female', 32, 'November 28, 1989'),
(1046, 'Owen', 'Gonzalez', 'Male', 27, 'May 9, 1997'),
(1047, 'Peyton', 'Davis', 'Female', 33, 'April 27, 1988'),
(1048, 'Jordan', 'Nguyen', 'Male', 25, 'August 23, 1999'),
(1049, 'Sofia', 'Brown', 'Female', 50, 'June 15, 1972'),
(1050, 'Avery', 'Chen', 'Male', 36, 'September 20, 1985')

Select *
From EmployeeInfo

--------------------------------------------------------------------------------


Drop Table If exists EmployeeSalary
Create Table EmployeeSalary
( 
EmployeeID Int,
DateOfHired Date,
Jobtitle VarChar (100),
Department VarChar (100),
Salary int,
CollegeDegree Varchar (100)
)


insert into  EmployeeSalary Values
(1001, '2022-07-22', 'CEO', 'Execitive', 1000000, 'Degree Holder'),
(1002, '2023-12-27', 'Chief Financial Officer', 'Finance', 178000, 'Degree Holder'),
(1003, '2024-01-06', 'Chief Sales Officer', 'Sales and Marketing', 163000, 'Degree Holder'),
(1004, '2019-11-21', 'Chief Human Resources Officer', 'Human Resources', 113000, 'Degree Holder'),
(1005, '2018-03-14', 'Chief Technology Officer', 'Technology and Innovation', 185000, 'Degree Holder'),
(1006, '2022-09-03', 'Chief Operating Officer', 'Operations', 178000, 'Degree Holder'),
(1007, '2024-01-02', 'HR Manager', 'Human Resources', 86000, 'Degree Holder'),
(1008, '2017-07-08', 'Sales Manager', 'Sales and Marketing', 97000, 'Degree Holder'),
(1009, '2023-04-02', 'Financial Controller', 'Finance', 62000, 'Degree Holder'),
(1010, '2011-10-12', 'IT Manager', 'Technology and Innovation', 163000, 'Degree Holder'),
(1011, '2020-02-28', 'Administrative Assistant', 'Operations', 93000, 'UnderGrad'),
(1012, '2015-08-15', 'Talent Acquisition Specialist', 'Human Resources', 64000, 'UnderGrad'),
(1013, '2019-06-20', 'Accounts Payable/Receivable Specialist', 'Finance', 212000, 'Degree Holder'),
(1014, '2023-12-30', 'Sales Manager', 'Sales and Marketing', 113000, 'UnderGrad'),
(1015, '2013-11-02', 'Administrative Assistant', 'Operations', 97800, 'Degree Holder'),
(1016, '2022-05-16', 'Talent Acquisition Specialist', 'Human Resources', 89000, 'UnderGrad'),
(1017, '2016-02-14', 'Accounts Payable/Receivable Specialist', 'Finance', 76000, 'UnderGrad'),
(1018, '2023-10-09', 'Sales Manager', 'Sales and Marketing', 91000, 'UnderGrad'),
(1019, '2018-08-07', 'Financial Controller', 'Finance', 236000, 'UnderGrad'),
(1020, '2024-01-14', 'Accounts Payable/Receivable Specialist', 'Finance', 147000, 'UnderGrad'),
(1021, '2012-09-20', 'HR Manager', 'Human Resources', 87000, 'UnderGrad'),
(1022, '2021-03-09', 'Administrative Assistant', 'Operations', 195000, 'Degree Holder'),
(1023, '2015-10-03', 'Marketing Coordinator', 'Sales and Marketing', 118000, 'Degree Holder'),
(1024, '2023-05-08', 'Talent Acquisition Specialist', 'Human Resources', 90700, 'UnderGrad'),
(1025, '2016-11-18', 'Accounts Payable/Receivable Specialist', 'Finance', 152000, 'Degree Holder'),
(1026, '2017-04-01', 'Operations Manager', 'Operations', 102000, 'underGrad'),
(1027, '2023-12-07', 'Research and Development Engineer', 'Technology and Innovation', 76000, 'UnderGrad'),
(1028, '2014-02-25', 'Marketing Coordinator', 'Sales and Marketing', 245000, 'Degree Holder'),
(1029, '2020-07-11', 'Financial Controller', 'Finance', 129000, 'UnderGrad'),
(1030, '2023-01-03', 'Marketing Coordinator', 'Sales and Marketing', 96200, 'UnderGrad'),
(1031, '2011-09-01', 'HR Manager', 'Human Resources', 92000, 'UnderGrad'),
(1032, '2019-03-28', 'Administrative Assistant', 'Operations', 78000, 'UnderGrad'),
(1033, '2017-10-18', 'IT Manager', 'Technology and Innovation', 67000, 'Degree Holder'),
(1034, '2022-02-09', 'Talent Acquisition Specialist', 'Human Resources', 181000, 'Degree Holder'),
(1035, '2016-07-03', 'Accounts Payable/Receivable Specialist', 'Finance', 114000, 'Degree Holder'),
(1036, '2023-12-14', 'IT Manager', 'Technology and Innovation', 70000, 'UnderGrad'),
(1037, '2014-09-29', 'Administrative Assistant', 'Operations', 94000, 'UnderGrad'),
(1038, '2018-06-05', 'Research and Development Engineer', 'Technology and Innovation', 80800, 'UnderGrad'),
(1039, '2023-02-18', 'Talent Acquisition Specialist', 'Human Resources', 65600, 'Degree Holder'),
(1040, '2012-08-11', 'Marketing Coordinator', 'Sales and Marketing', 86500, 'UnderGrad'),
(1041, '2021-05-22', 'Marketing Coordinator', 'Sales and Marketing', 75700, 'UnderGrad'),
(1042, '2017-11-06', 'Operations Manager', 'Operations', 64200, 'UnderGrad'),
(1043, '2023-01-11', 'Research and Development Engineer', 'Technology and Innovation', 217000, 'Degree Holder'),
(1044, '2013-04-30', 'Accounts Payable/Receivable Specialist', 'Finance', 117000, 'Degree Holder'),
(1045, '2020-10-21', 'Research and Development Engineer', 'Technology and Innovation', 92400, 'UnderGrad'),
(1046, '2015-03-17', 'Research and Development Engineer', 'Technology and Innovation', 75400, 'UnderGrad'),
(1047, '2011-07-15', 'Operations Manager', 'Operations', 69100, 'UnderGrad'),
(1048, '2022-12-02', 'Talent Acquisition Specialist', 'Human Resources', 71800, 'Degree Holder'),
(1049, '2018-09-12', 'Marketing Coordinator', 'Sales and Marketing', 122000, 'Degree Holder'),
(1050, '2022-05-03', 'Research and Development Engineer', 'Technology and Innovation', 71800, 'UnderGrad')


Select *
From SQLAdvanced.dbo.EmployeeSalary