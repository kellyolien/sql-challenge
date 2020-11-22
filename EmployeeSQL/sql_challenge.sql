CREATE TABLE Employee (
    emp_no integer   NOT NULL,
    title_id varchar   NOT NULL,
    birthdate varchar   NOT NULL,
    first_name VARCHAR   NOT NULL,
    last_name VARCHAR   NOT NULL,
	sex varchar NOT NULL,
	hire_date varchar NOT NULL,
    PRIMARY KEY (emp_no)
);

select * from employee

CREATE TABLE Salaries (
    emp_no integer   NOT NULL,
    salary integer   NOT NULL,
    PRIMARY KEY (emp_no)
);

CREATE TABLE Departments (
    dept_no varchar   NOT NULL,
    dept_name varchar   NOT NULL,
    PRIMARY KEY (dept_no)
);

CREATE TABLE Jobs (
    title_id varchar   NOT NULL,
    title varchar   NOT NULL,
	PRIMARY KEY (title_id)
);

CREATE TABLE Managers(
    dept_no varchar NOT NULL,
	emp_no int   NOT NULL,
	PRIMARY KEY (emp_no)
);


--Need to create a composite key--will not import CSV--employees can be part of more than one dept?
CREATE TABLE Employees_dept(
    emp_no integer   NOT NULL,
    dept_no varchar   NOT NULL,
	PRIMARY KEY (emp_no, dept_no)
);
