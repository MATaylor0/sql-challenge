-- Finding the employee number, first name, last name, sex & salary
SELECT e.emp_no, e.first_name, e.last_name, e.sex, s.salary
FROM employees as e
JOIN salaries as s 
ON e.emp_no = s.emp_no;

-- Finding the employee first name, last name, hire date only for employees who were hired in 1986
SELECT first_name, last_name, hire_date FROM employees
WHERE hire_date LIKE '%1986';

-- Finding the manager of each department as well as, department number, department name, employee number, first & last name
SELECT e.first_name, e.last_name, d.dept_name, man.emp_no, man.dept_no
FROM dept_manager as man
JOIN employees as e ON man.emp_no = e.emp_no
JOIN departments as d ON man.dept_no = d.dept_no;

-- Finding the department of each employee along with employee number, first name, last name & department name
SELECT e.emp_no, e.first_name, e.last_name, d.dept_name
FROM employees as e
JOIN dept_emp as emp ON e.emp_no = emp.emp_no
JOIN departments as d ON emp.dept_no = d.dept_no;

-- Finding the first name, last name and sex for employees whose first name is "Hercules" and last names begin with "B"
SELECT first_name, last_name, sex FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- Finding the employees in the sales department including their employee number, first name, last name & department name
SELECT e.emp_no, e.first_name, e.last_name, d.dept_name
FROM employees as e
JOIN dept_emp as emp ON e.emp_no = emp.emp_no
JOIN departments as d ON emp.dept_no = d.dept_no
WHERE dept_name = 'Sales';

-- Finding all employees in the sales nad development departments including their employee number, first name, last name & department name
SELECT e.emp_no, e.first_name, e.last_name, d.dept_name
FROM employees as e
JOIN dept_emp as emp ON e.emp_no = emp.emp_no
JOIN departments as d ON emp.dept_no = d.dept_no
WHERE dept_name = 'Sales' OR dept_name = 'Development';

-- Finding the frequency and count of employer last names in descending order
SELECT last_name, COUNT(1) as "Frequency" FROM employees
GROUP BY last_name
ORDER BY "Frequency" DESC;