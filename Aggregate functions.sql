CREATE DATABASE EmployeeDB;
USE EmployeeDB;

CREATE TABLE employee (
    empno VARCHAR(10) PRIMARY KEY,
    emp_name VARCHAR(50),
    dept VARCHAR(50),
    salary INT,
    dob DATE,
    branch VARCHAR(50)
);

INSERT INTO employee (empno, emp_name, dept, salary, dob, branch) VALUES
('E101', 'Amit', 'Production', 45000, '2000-03-12', 'Bangalore'),
('E102', 'Amit', 'HR', 70000, '2002-07-03', 'Bangalore'),
('E103', 'Sunita', 'Management', 120000, '2001-01-11', 'Mysore'),
('E105', 'Sunita', 'IT', 67000, '2001-08-01', 'Mysore'),
('E106', 'Mahesh', 'Civil', 145000, '2003-09-20', 'Mumbai');

-- 1
SELECT * FROM employee;

-- 2
SELECT empno, salary FROM employee;

-- 3
SELECT AVG(salary) FROM employee;

-- 4
SELECT COUNT(*) FROM employee;

-- 5
SELECT COUNT(DISTINCT emp_name) FROM employee;

-- 6
SELECT emp_name, SUM(salary), COUNT(*)
FROM employee
GROUP BY emp_name;

-- 7
SELECT emp_name, SUM(salary)
FROM employee
GROUP BY emp_name
HAVING SUM(salary) > 120000;

-- 8
SELECT emp_name FROM employee
ORDER BY emp_name DESC;

-- 9
SELECT * FROM employee
WHERE emp_name = 'Amit' AND salary > 50000;
