CREATE TABLE departments (
    dept_no VARCHAR(255),
    dept_name VARCHAR(255),
    PRIMARY KEY (dept_no, dept_name)
);

CREATE TABLE employees (
    emp_no INTEGER,
    emp_title_id VARCHAR(255),
    birth_date DATE,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    sex VARCHAR(255),
    hire_date DATE,
    PRIMARY KEY (emp_no)
);

CREATE TABLE titles (
    title_id VARCHAR(255),
    title VARCHAR(255),
    PRIMARY KEY (title_id)
);

CREATE TABLE dept_emp(
    emp_no INTEGER,
    dept_no VARCHAR(255),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager(
    dept_no VARCHAR(255),
    emp_no INTEGER,
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE salaries (
    emp_no INTEGER,
    salary INTEGER,
    PRIMARY KEY (emp_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
