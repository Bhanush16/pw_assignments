CREATE DATABASE CompanyDB;
USE CompanyDB;
CREATE TABLE Employee (
    EmpID INT PRIMARY KEY, 
    EmpName VARCHAR(50),
    Department VARCHAR(50),
    City VARCHAR(50),
    Salary INT,
    HireDate DATE
);

INSERT INTO Employee (EmpID, EmpName, Department, City, Salary, HireDate) VALUES
(101, 'Rahul Mehta', 'Sales', 'Delhi', 55000, '2020-04-12');

INSERT INTO Employee (EmpID, EmpName, Department, City, Salary, HireDate) VALUES
(102, 'Priya Sharma', 'HR', 'Mumbai', 62000, '2019-09-25');

INSERT INTO Employee (EmpID, EmpName, Department, City, Salary, HireDate) VALUES
(103, 'Aman Singh', 'IT', 'Bengaluru', 72000, '2021-03-10');

INSERT INTO Employee (EmpID, EmpName, Department, City, Salary, HireDate) VALUES
(104, 'Neha Patel', 'Sales', 'Delhi', 48000, '2022-01-14');

INSERT INTO Employee (EmpID, EmpName, Department, City, Salary, HireDate) VALUES
(105, 'Karan Joshi', 'Marketing', 'Pune', 45000, '2018-07-22');

INSERT INTO Employee (EmpID, EmpName, Department, City, Salary, HireDate) VALUES
(106, 'Divya Nair', 'IT', 'Chennai', 81000, '2019-12-11');

INSERT INTO Employee (EmpID, EmpName, Department, City, Salary, HireDate) VALUES
(107, 'Raj Kumar', 'HR', 'Delhi', 60000, '2020-05-28');

INSERT INTO Employee (EmpID, EmpName, Department, City, Salary, HireDate) VALUES
(108, 'Simran Kaur', 'Finance', 'Mumbai', 58000, '2021-08-03');

INSERT INTO Employee (EmpID, EmpName, Department, City, Salary, HireDate) VALUES
(109, 'Arjun Reddy', 'IT', 'Hyderabad', 70000, '2022-02-18');

INSERT INTO Employee (EmpID, EmpName, Department, City, Salary, HireDate) VALUES
(110, 'Anjali Das', 'Sales', 'Kolkata', 51000, '2023-01-15');

SELECT *
FROM Employee;
-- Show employees working in either the 'IT' or 'HR' departments.
SELECT * FROM Employee WHERE Department IN ('IT', 'HR');

-- Retrieve employees whose department is in 'Sales', 'IT', or 'Finance'.
SELECT * FROM Employee WHERE Department IN ('Sales', 'IT', 'Finance');

-- Display employees whose salary is between ₹50,000 and ₹70,000.
SELECT * FROM Employee WHERE Salary BETWEEN 50000 AND 70000;

-- List employees whose names start with the letter 'A'.
SELECT * FROM Employee WHERE EmpName LIKE 'A%';

-- Find employees whose names contain the substring 'an'.
SELECT * FROM Employee WHERE EmpName LIKE '%an%';

-- Show employees who are from 'Delhi' or 'Mumbai' AND earn more than 55,000.
SELECT * FROM Employee WHERE (City = 'Delhi' OR City = 'Mumbai') AND Salary > 55000;

-- Display all employees except those from the 'HR' department.
SELECT * FROM Employee WHERE Department <> 'HR';

-- Get all employees hired between 2019 and 2022, ordered by HireDate (oldest first).
SELECT * FROM Employee WHERE HireDate BETWEEN '2019-01-01' AND '2022-12-31' ORDER BY HireDate ASC;