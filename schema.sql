-- Create schemas

-- Create tables
CREATE TABLE IF NOT EXISTS employees
(
    emp_no INTEGER NOT NULL,
    emp_title_id VARCHAR(30),
    birth_date DATE,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    sex VARCHAR(1),
    hire_date DATE,
    PRIMARY KEY(emp_no)
);

CREATE TABLE IF NOT EXISTS dept_manager
(
    emp_no INTEGER NOT NULL,
    dept_no VARCHAR(30),
    PRIMARY KEY(emp_no)
);

CREATE TABLE IF NOT EXISTS dept_emp
(
    primary_key INTEGER NOT NULL,
    PRIMARY KEY(primary_key)
);

CREATE TABLE IF NOT EXISTS departments
(
    dept_no VARCHAR(30) NOT NULL,
    dept_name VARCHAR(30),
    PRIMARY KEY(dept_no)
);

CREATE TABLE IF NOT EXISTS salaries
(
    emp_no INTEGER NOT NULL,
    salary INTEGER,
    PRIMARY KEY(emp_no)
);

CREATE TABLE IF NOT EXISTS titles
(
    title_id VARCHAR(30) NOT NULL,
    title VARCHAR(30),
    PRIMARY KEY(title_id)
);


-- Create FKs
ALTER TABLE employees
    ADD    FOREIGN KEY (emp_no)
    REFERENCES dept_manager(emp_no)
    MATCH SIMPLE
;
    
ALTER TABLE dept_manager
    ADD    FOREIGN KEY (emp_no)
    REFERENCES employees(emp_no)
    MATCH SIMPLE
;
    
ALTER TABLE departments
    ADD    FOREIGN KEY (dept_no)
    REFERENCES dept_manager(dept_no)
    MATCH SIMPLE
;
    

-- Create Indexes

