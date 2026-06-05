SELECT * FROM university.students
where student_name like 'd%p%h';

SELECT * FROM university.students
order by student_name;

SELECT * FROM university.students
where marks between 90 and 100;

-- Create Teacher Table
CREATE TABLE Teacher (
    TeacherID INT PRIMARY KEY,
    TeacherName VARCHAR(50),
    Subject VARCHAR(50),
    Salary DECIMAL(10,2)
);

-- Create Log Table
CREATE TABLE Teacher_Log (
    Message VARCHAR(100)
);

-- Change delimiter temporarily
DELIMITER //

-- Create Trigger
CREATE TRIGGER teacher_trigger
AFTER INSERT ON Teacher
FOR EACH ROW
BEGIN
    INSERT INTO Teacher_Log
    VALUES ('New Teacher Record Inserted');
END //

-- Restore delimiter
DELIMITER ;

-- Insert Data into Teacher Table
INSERT INTO Teacher
VALUES (101, 'Rahul Sharma', 'DBMS', 50000);

-- Check Teacher Table
SELECT * FROM Teacher;

-- Check Log Table
SELECT * FROM Teacher_Log;