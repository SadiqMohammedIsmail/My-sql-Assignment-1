create schema employee;
use  employee;

CREATE TABLE departments (
    department_id INT,
    department_name VARCHAR(100)
);

CREATE TABLE location (
    location_id INT,
    location VARCHAR(30)
);

CREATE TABLE employees (
    employee_id INT,
    employee_name VARCHAR(50),
    gender VARCHAR(1),
    age INT,
    hire_date DATE,
    designation VARCHAR(100),
    department_id INT,
    location_id INT,
    salary DECIMAL(10,2)
);

ALTER TABLE employees 
ADD email VARCHAR(100);

ALTER TABLE employees 
MODIFY designation VARCHAR(200);

ALTER TABLE employees 
DROP  age;

Alter Table employees
RENAME COLUMN hire_date TO date_of_joining;

RENAME TABLE departments TO Departments_Info;

Rename Table location To locations;

truncate table employees;
Drop table employees;
Drop Schema Employee;

Create Schema Employee;
Use employee;

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) 
);

CREATE TABLE location (
    location_id INT AUTO_INCREMENT PRIMARY KEY,
    location VARCHAR(30) NOT NULL UNIQUE
);

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    gender ENUM('M', 'F') NOT NULL,
    age INT CHECK (age >= 18),
    hire_date DATE DEFAULT (CURRENT_DATE),
    designation VARCHAR(100),
    department_id INT,
    location_id INT,
    salary DECIMAL(10,2),
    FOREIGN KEY (department_id) REFERENCES departments(department_id),
    FOREIGN KEY (location_id) REFERENCES location(location_id)
);







