--Employee Queries

-- Data Analysis # 1 
SELECT employees.emp_no, 
	employees.last_name,
	employees.first_name, 
	employees.gender, 
	salaries.salary from employees 
	LEFT JOIN salaries
	ON employees.emp_no = salaries.emp_no;
	
-- Data Analysis # 2
SELECT first_name, last_name, hire_date FROM employees WHERE 
hire_date BETWEEN '1986-01-01' AND '1986-12-31'
ORDER BY hire_date;

-- Data Analysis # 3 CAN'T FIGURE OUT ENDING EMPLOYMENT DATE!!
	
SELECT dept_manager.emp_no, 
	dept_manager.dept_no, 
	departments.dept_name, 
	employees.first_name,
	employees.last_name,
	employees.hire_date
FROM dept_manager LEFT JOIN employees
ON dept_manager.emp_no = employees.emp_no
LEFT JOIN departments
ON dept_manager.dept_no = departments.dept_no;


-- Data Analysis # 4 
SELECT dept_emp.emp_no,
	employees.last_name,
	employees.first_name,
	employees.emp_no,
	departments.dept_name
	FROM dept_emp LEFT JOIN employees 
	ON dept_emp.emp_no = employees.emp_no
	LEFT JOIN departments
	ON dept_emp.dept_no = departments.dept_no
	WHERE to_date = '9999-01-01';
	


-- Data Analysis # 5

SELECT * from employees where first_name = 'Hercules' AND last_name like 'B%'

-- Data Analysis # 6 


SELECT dept_emp.emp_no,
	employees.last_name,
	employees.first_name,
	departments.dept_name
	FROM dept_emp LEFT JOIN employees 
	ON dept_emp.emp_no = employees.emp_no
	LEFT JOIN departments
	ON dept_emp.dept_no = departments.dept_no
	WHERE to_date = '9999-01-01' AND dept_name = 'Sales';

-- Data Analysis # 7 


SELECT dept_emp.emp_no,
	employees.last_name,
	employees.first_name,
	departments.dept_name
	FROM dept_emp LEFT JOIN employees 
	ON dept_emp.emp_no = employees.emp_no
	LEFT JOIN departments
	ON dept_emp.dept_no = departments.dept_no
	WHERE to_date = '9999-01-01' AND dept_name IN ('Sales','Development');

-- Data Analysis # 8 

SELECT employees.last_name, COUNT(first_name) AS ln_count FROM employees
GROUP BY employees.last_name
ORDER BY ln_count DESC;
