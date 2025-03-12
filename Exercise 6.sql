CREATE DATABASE exp6;
USE exp6;
CREATE TABLE EMPLOYEE3 (
    Emp_no INT PRIMARY KEY,
    E_name VARCHAR(50) NOT NULL,
    E_address VARCHAR(100),
    E_ph_no VARCHAR(15),
    Dept_no INT,
    Dept_name VARCHAR(50),
    Job_id INT,
    Designation VARCHAR(50),
    Salary DECIMAL(10,2),
    Joining_Date DATE
);

-- Insert data into EMPLOYEE3
INSERT INTO EMPLOYEE3 (Emp_no, E_name, E_address, E_ph_no, Dept_no, Dept_name, Job_id, Designation, Salary, Joining_Date) VALUES 
(101, 'Alice Johnson', '123 Main St', '9876543210', 1, 'HR', 201, 'MANAGER', 75000.00, '2020-01-01'),
(102, 'Bob Smith', '456 Elm St', '8765432109', 2, 'IT', 202, 'ENGINEER', 60000.00, '2021-01-01'),
(103, 'Charlie Brown', '789 Oak St', '7654321098', 3, 'Finance', 203, 'MANAGER', 80000.00, '2022-01-01');

-- Select managers
SELECT Emp_no, E_name, Salary FROM EMPLOYEE3 WHERE Designation = 'MANAGER';

-- Select employees with salary greater than any in IT department
SELECT * FROM EMPLOYEE3 WHERE Salary > ANY (SELECT Salary FROM EMPLOYEE3 WHERE Dept_name = 'IT');

-- Select employees who joined after 1981
SELECT * FROM EMPLOYEE3 WHERE YEAR(Joining_Date) > 1981 ORDER BY Designation ASC;

-- Calculate experience and daily salary
SELECT Emp_no, E_name, 
       TIMESTAMPDIFF(YEAR, Joining_Date, CURDATE()) AS Experience, 
       Salary / 30 AS Daily_Salary 
FROM EMPLOYEE3;

-- Select employees with specific designations
SELECT * FROM EMPLOYEE3 WHERE Designation IN ('CLERK', 'ANALYST');
