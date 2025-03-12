CREATE TABLE Student1 (
    id INT PRIMARY KEY AUTO_INCREMENT,
    admission_no VARCHAR(45) NOT NULL UNIQUE,
    first_name VARCHAR(45) NOT NULL,
    last_name VARCHAR(45) NOT NULL,
    age INT,
    city VARCHAR(25) NOT NULL
);

CREATE TABLE Fee (
    admission_no VARCHAR(45) NOT NULL,
    course VARCHAR(45) NOT NULL,
    amount_paid INT
);

-- Insert data into Student1
INSERT INTO Student1 (admission_no, first_name, last_name, age, city) VALUES
(3354, 'Luisa', 'Evans', 13, 'Texas'),
(2135, 'Paul', 'Ward', 15, 'Alaska'),
(4321, 'Peter', 'Bennett', 14, 'California'),
(4213, 'Carlos', 'Patterson', 17, 'New York'),
(5112, 'Rose', 'Huges', 16, 'Florida'),
(6113, 'Marielia', 'Simmons', 15, 'Arizona'),
(7555, 'Antonio', 'Butler', 14, 'New York'),
(8345, 'Diego', 'Cox', 13, 'California');

-- Insert data into Fee
INSERT INTO Fee (admission_no, course, amount_paid) VALUES
(3354, 'Java', 20000),
(7555, 'Android', 22000),
(4321, 'Python', 18000),	
(8345, 'SQL', 15000),
(5112, 'Machine Learning', 30000);

-- Join commands
SELECT Student1.admission_no, Student1.first_name, Student1.last_name, Fee.course, Fee.amount_paid
FROM Student1 INNER JOIN Fee ON Student1.admission_no = Fee.admission_no;

SELECT Student1.admission_no, Student1.first_name, Student1.last_name, Fee.course, Fee.amount_paid
FROM Student1 LEFT OUTER JOIN Fee ON Student1.admission_no = Fee.admission_no;

SELECT Student1.admission_no, Student1.first_name, Student1.last_name, Fee.course, Fee.amount_paid
FROM Student1 RIGHT OUTER JOIN Fee ON Student1.admission_no = Fee.admission_no;

SELECT Student1.admission_no, Student1.first_name, Student1.last_name, Fee.course, Fee.amount_paid
FROM Student1
LEFT JOIN Fee ON Student1.admission_no = Fee.admission_no
UNION
SELECT Student1.admission_no, Student1.first_name, Student1.last_name, Fee.course, Fee.amount_paid
FROM Student1
RIGHT JOIN Fee ON Student1.admission_no = Fee.admission_no;
