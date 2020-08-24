-- 1) List the following details of each employee: employee number, last name, first name, sex, and salary
SELECT employees.emp_no,
employees.first_name,
employees.last_name,
employees.sex,
salaries.salary
FROM employees
INNER JOIN salaries ON
employees.emp_no = salaries.emp_no;

-- 2) List first name, last name, and hire date for employees who were hired in 1986.
SELECT employees.emp_no,
employees.first_name,
employees.last_name,
employees.hire_date
FROM employees
WHERE EXTRACT(YEAR FROM employees.hire_date) = 1986;

-- 3) List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name
SELECT employees.emp_no,
employees.first_name,
employees.last_name,
departments.dept_name,
dept_manager.dept_no
FROM employees
INNER JOIN dept_manager
ON employees.emp_no = dept_manager.emp_no
JOIN departments
ON departments.dept_no = dept_manager.dept_no;

-- 4) List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT dept_emp.emp_no,
employees.first_name,
employees.last_name,
departments.dept_name
FROM employees
INNER JOIN dept_emp ON
employees.emp_no = dept_emp.emp_no
JOIN departments
ON departments.dept_no = dept_emp.dept_no;