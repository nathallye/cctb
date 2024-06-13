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