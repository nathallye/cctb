-- Databases = ERD (Entity-Relationship Diagram)
-- Query to create database
-- CREATE DATABASE database_name;
CREATE DATABASE lab;

-- Query to switch to the created database
-- USE database_name;
USE lab;

-- Tables = entities
-- Query to create the student table:
-- CREATE TABEL table_name(attributes) in this case the attributes are sid, first_name, first_name, last_name, age, grade, major; so...
-- CREATE TABEL table_name(sid, first_name, first_name, last_name, age, grade, major);
CREATE TABLE student(
  sid int primary key,
  first_name varchar(20) not null,
  last_name varchar(20) not null,
  age int not null check(age > 18),
  grade varchar(2) not null,
  major varchar(20) not null
);

-- Constraints explanation
-- sid int primary key => 
  -- int because id has to be integer; primary key because id has to be unique and not null;

-- first_name varchar(20) not null => 
  -- varchar(20) because first_name must be a string and the maximum number of characters allowed is 20; 
  -- not null because first_name must have a value, it cannot be left empty;

-- last_name varchar(20) not null => 
  -- varchar(20) because last_name must be a string and the maximum number of characters allowed is 20; 
  -- not null because last_name must have a value, it cannot be left empty;

-- age int not null check(age > 18) => 
  -- int because age has to be integer; 
  -- not null because age must have a value, it cannot be left empty; 
  -- check(age > 18) ensures the value in the age column must be greater than 18, so only students aged 19 and above can be inserted;

-- grade varchar(2) not null => 
  -- varchar(2) because grade must be a string and the maximum number of characters allowed is 2; 
  -- not null because grade must have a value, it cannot be left empty;

-- major varchar(20) not null => 
  -- varchar(20) because major must be a string and the maximum number of characters allowed is 20; 
  -- not null because major must have a value, it cannot be left empty.

-- insert data into the student table
--                 name_table (attribuites_names)                   values (data for each field/attribuite)
INSERT INTO student (sid, first_name, last_name, age, grade, major) VALUES (1001, 'John', 'Doe', 20, 'B', 'Computer Sci'),
  -- for insert more then 1 row continue after the ','
  (1002, 'Jane', 'Smith', 21, 'A', 'Mathematics'),
  (1003, 'Emily', 'Johnson', 22, 'A-', 'Physics'),
  (1004, 'Michael', 'Brown', 19, 'B+', 'Chemistry'),
  (1005, 'Sarah', 'Davis', 23, 'A', 'Biology'),
  (1006, 'David', 'Wilson', 20, 'C+', 'English'),
  (1007, 'Laura', 'Martinez', 21, 'B', 'History'),
  (1008, 'Robert', 'Garcia', 22, 'B-', 'Economics'),
  (1009, 'Mary', 'Lee', 19, 'A', 'Political Sci'),
  (1010, 'James', 'Walker', 23, 'A-', 'Sociology'),
  (1011, 'Olivia', 'White', 20, 'B+', 'Psychology'),
  (1012, 'William', 'Harris', 21, 'A-', 'Philosophy'),
  (1013, 'Sophia', 'Clark', 22, 'A', 'Computer Sci'),
  (1014, 'Benjamin', 'Lewis', 19, 'B', 'Mathematics'),
  (1015, 'Isabella', 'Robinson', 23, 'A', 'Physics'),
  (1016, 'Ethan', 'Young', 20, 'C', 'Chemistry'),
  (1017, 'Mia', 'Hall', 21, 'B+', 'Biology'),
  (1018, 'Alexander', 'Allen', 22, 'B-', 'English'),
  (1019, 'Charlotte', 'King', 19, 'A-', 'History'),
  (1020, 'Daniel', 'Wright', 23, 'A', 'Economics');

-- each row/data = record
  
-- Query to return all records inserted in the student table
-- SELECT * FROM table_name
SELECT * FROM student;