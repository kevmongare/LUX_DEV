-- Database: luxacademy

-- DROP DATABASE IF EXISTS luxacademy;
-- CREATE DATABASE - IS THE COMMAND TO HELP US CREATE A DATABASE IN SQL AFTER WARDS WE CREATED THE SCHEMAS THAT HELPS US IN GROUPING OUR DATA AND LASTLY THE TABLES
CREATE DATABASE luxacademy
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'en_US.UTF-8'
    LC_CTYPE = 'en_US.UTF-8'
    ICU_LOCALE = 'en-US'
    LOCALE_PROVIDER = 'icu'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

CREATE TABLE courses.coursesinfo( --WE ARE USING CREATE TABLE schema.table_name (then the rows needed it is important to help us specify what we need)
course_id BIGSERIAL primary key,
course_name VARCHAR,
course_tutor VARCHAR
);
INSERT INTO courses.coursesinfo(course_name, course_tutor) --INSERT INTO THE SCHEMA.THE TABLE () VALUES () HELPS US UPDATE THE DATA WE WANT TO UPLOAD TO OUR DATA BASE
VALUES 
('Data Science', 'Denis'),
('Procurement', 'John'),
('Computer Science', 'Mr Koech');

SELECT*FROM courses.coursesinfo;
SELECT*FROM courses.coursesinfo WHERE course_name = 'Procurement'; -- SELECT*FROM HELPS READ DATA FROM OUR DATABASE WHEN WE USE WHERE IT HELPS US SPECIFY REQUIREMENTS
select  COUNT(course_name) FROM courses.coursesinfo;--THE  COUNT() HELPS DISPLAY THE NUMBER OF ROWS
