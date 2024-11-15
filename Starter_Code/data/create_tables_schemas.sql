-- Drop tables for fresh start
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;

-- Create Dept Table
CREATE TABLE departments (
    dept_no varchar PRIMARY KEY,
    dept_name varchar NOT NULL
);

-- Create Dept_Emp Table
CREATE TABLE dept_emp (
    emp_no integer NOT NULL,
    dept_no varchar NOT NULL,
    PRIMARY KEY (emp_no, dept_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- Create Dept_Manager Table
CREATE TABLE dept_manager (
    dept_no varchar NOT NULL,
    emp_no integer NOT NULL,
    PRIMARY KEY (dept_no, emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- Create Employee Table
CREATE TABLE employees (
    emp_no integer PRIMARY KEY,
    emp_title varchar NOT NULL,
    birth_date timestamp without time zone DEFAULT now(),
    first_name varchar NOT NULL,
    last_name varchar NOT NULL,
    sex varchar NOT NULL,
    hire_date timestamp without time zone DEFAULT now()
);

-- Create Salaries Table
CREATE TABLE salaries (
    emp_no integer NOT NULL,
    salary integer NOT NULL,
    PRIMARY KEY (emp_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- Create Titles Table
CREATE TABLE titles (
    title_id varchar PRIMARY KEY,
    title varchar NOT NULL
);

-- Select Tables
SELECT * FROM departments;
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;
SELECT * FROM employees;
SELECT * FROM salaries;
SELECT * FROM titles;
