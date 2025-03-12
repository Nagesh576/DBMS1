CREATE TABLE employee2 (
    empno VARCHAR(4) PRIMARY KEY,
    emp_name VARCHAR(30),
    dept VARCHAR(30),
    salary INT,
    doj DATE,
    branch VARCHAR(20)
);

-- Insert data into employee2 table
INSERT INTO employee2 VALUES
('E101', 'Amit', 'Production', 45000, '2020-03-12', 'Bangalore'),
('E102', 'Amit', 'HR', 70000, '2022-07-02', 'Bangalore'),
('E103', 'Sunita', 'Management', 120000, '2021-01-01', 'Mysore'),
('E105', 'Sunita', 'IT', 67000, '2021-08-01', 'Mysore'),
('E106', 'Mahesh', 'Civil', 145000, '2023-09-20', 'Mumbai');

-- Select all from employee2
SELECT * FROM employee2;

-- Select empno and salary from employee2
SELECT empno, salary FROM employee2;

-- Calculate average salary
SELECT AVG(salary) FROM employee2;

-- Count total employees
SELECT COUNT(*) FROM employee2;

-- Count distinct employee names
SELECT COUNT(DISTINCT emp_name) FROM employee2;

-- Group by emp_name and calculate sum and count
SELECT emp_name, SUM(salary), COUNT(*) FROM employee2 GROUP BY emp_name;

-- Filter by sum of salary
SELECT emp_name, SUM(salary) FROM employee2 GROUP BY emp_name HAVING SUM(salary) > 120000;

-- Order by emp_name descending
SELECT emp_name FROM employee2 ORDER BY emp_name DESC;

-- Get current date
SELECT CURRENT_DATE;

-- Order by emp_name ascending
SELECT emp_name FROM employee2 ORDER BY emp_name;

-- Filter by emp_name and salary
SELECT * FROM employee2 WHERE emp_name = 'Amit' AND salary > 50000;

