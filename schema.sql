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
    primary_key INTEGER NOT NULL,
    dept_no VARCHAR(30),
    emp_no INTEGER,
    PRIMARY KEY(primary_key)
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

CREATE TABLE IF NOT EXISTS dept_emp
(
    primary_key INTEGER NOT NULL,
    emp_no INTEGER,
    dept_no VARCHAR(30),
    PRIMARY KEY(primary_key)
);

CREATE TABLE IF NOT EXISTS titles
(
    primary_key INTEGER NOT NULL,
    title_id VARCHAR(30),
    title VARCHAR(30),
    PRIMARY KEY(primary_key)
);

CREATE TABLE IF NOT EXISTS salaries
(
    primary_key INTEGER NOT NULL,
    emp_no INTEGER,
    salary INTEGER,
    PRIMARY KEY(primary_key)
);


-- Create FKs
ALTER TABLE departments
    ADD    FOREIGN KEY (dept_no)
    REFERENCES dept_manager(dept_no)
    MATCH SIMPLE
;
    
ALTER TABLE dept_emp
    ADD    FOREIGN KEY (dept_no)
    REFERENCES departments(dept_name)
    MATCH SIMPLE
;
    
ALTER TABLE employees
    ADD    FOREIGN KEY (emp_no)
    REFERENCES dept_emp(emp_no)
    MATCH SIMPLE
;
    
ALTER TABLE titles
    ADD    FOREIGN KEY (title_id)
    REFERENCES employees(emp_title_id)
    MATCH SIMPLE
;
    
ALTER TABLE salaries
    ADD    FOREIGN KEY (emp_no)
    REFERENCES employees(emp_no)
    MATCH SIMPLE
;
    
ALTER TABLE dept_manager
    ADD    FOREIGN KEY (emp_no)
    REFERENCES employees(emp_no)
    MATCH SIMPLE
;
    

-- Create Indexes

