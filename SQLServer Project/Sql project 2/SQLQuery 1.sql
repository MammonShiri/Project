
--!DATABASE OF SQL INTERMEDIATE!--

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

Drop Table if exists EmployeeSalary
Create Table EmployeeSalary
(
EmployeeID Int,
Jobtitle VarChar (100),
Department VarChar (100),
Salary int
)
Insert Into EmployeeSalary Values
(1001, 'CEO', 'Execitive',1000000),
(1002, 'Chief Financial Officer', 'Finance', 178000),
(1003, 'Chief Sales Officer', 'Sales and Marketing', 163000),
(1004, 'Chief Human Resources Officer', 'Human Resources', 113000),
(1005, 'Chief Technology Officer', 'Technology and Innovation', 185000),
(1006, 'Chief Operating Officer', 'Operations', 178000),
(1007, 'HR Manager', 'Human Resources', 86000),
(1008, 'Sales Manager', 'Sales and Marketing', 97000),
(1009, 'Financial Controller', 'Finance', 62000),
(1010, 'IT Manager', 'Technology and Innovation', 163000),
(1011, 'Administrative Assistant', 'Operations', 93000),
(1012, 'Talent Acquisition Specialist', 'Human Resources', 64000),
(1013, 'Accounts Payable/Receivable Specialist', 'Finance', 212000),
(1014, 'Sales Manager', 'Sales and Marketing', 113000),
(1015, 'Administrative Assistant', 'Operations', 97800),
(1016, 'Talent Acquisition Specialist', 'Human Resources', 89000),
(1017, 'Accounts Payable/Receivable Specialist', 'Finance', 76000),
(1018, 'Sales Manager', 'Sales and Marketing', 91000),
(1019, 'Financial Controller', 'Finance', 236000),
(1020, 'Accounts Payable/Receivable Specialist', 'Finance', 147000),
(1021, 'HR Manager', 'Human Resources', 87000),
(1022, 'Administrative Assistant', 'Operations ', 195000),
(1023, 'Marketing Coordinator', 'Sales and Marketing', 118000),
(1024, 'Talent Acquisition Specialist', 'Human Resources', 90700),
(1025, 'Accounts Payable/Receivable Specialist', 'Finance', 152000),
(1026, 'Operations Manager', 'Operations', 102000),
(1027, 'Research and Development Engineer', 'Technology and Innovation', 76000),
(1028, 'Marketing Coordinator', 'Sales and Marketing', 245000),
(1029, 'Financial Controller', 'Finance', 129000),
(1030, 'Marketing Coordinator', 'Sales and Marketing', 96200),
(1031, 'HR Manager', 'Human Resources', 92000),
(1032, 'Administrative Assistant ', 'Operations', 78000),
(1033, 'IT Manager', 'Technology and Innovation', 67000),
(1034, 'Talent Acquisition Specialist', 'Human Resources', 181000),
(1035, 'Accounts Payable/Receivable Specialist', 'Finance', 114000),
(1036, 'IT Manager', 'Technology and Innovation', 70000),
(1037, 'Administrative Assistant', 'Operations', 94000),
(1038, 'Research and Development Engineer', 'Technology and Innovation', 80800),
(1039, 'Talent Acquisition Specialist', 'Human Resources', 65600),
(1040, 'Marketing Coordinator', 'Sales and Marketing', 86500),
(1041, 'Marketing Coordinator', 'Sales and Marketing', 75700),
(1042, 'Operations Manager', 'Operations', 64200),
(1043, 'Research and Development Engineer', 'Technology and Innovation', 217000),
(1044, 'Accounts Payable/Receivable Specialist', 'Finance', 117000),
(1045, 'Research and Development Engineer', 'Technology and Innovation', 92400),
(1046, 'Research and Development Engineer', 'Technology and Innovation', 75400),
(1047, 'Operations Manager', 'Operations', 69100),
(1048, 'Talent Acquisition Specialist', 'Human Resources', 71800),
(1049, 'Marketing Coordinator', 'Sales and Marketing', 122000),
(1050, 'Research and Development Engineer', 'Technology and Innovation', 71800)


Select *
From EmployeeSalary



