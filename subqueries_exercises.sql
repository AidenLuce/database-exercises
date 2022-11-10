use employees;

# Find all the employees with the same hire date as employee 101010 using a subquery. 69 Rows
SELECT CONCAT(first_name, ' ', last_name) AS Full_Name FROM employees AS e
WHERE hire_date IN (SELECT hire_date FROM employees WHERE emp_no = '101010');

# Find all the titles held by all employees with the first name Aamod. 314 total titles, 6 unique titles
SELECT CONCAT(first_name, ' ', last_name) AS Full_Name, T.title AS Title FROM employees AS e
JOIN titles t on e.emp_no = t.emp_no
WHERE first_name IN (SELECT first_name FROM employees WHERE first_name = 'Aamod');

# Find all the current department managers that are female.
SELECT first_name, last_name, gender from employees AS e
WHERE emp_no IN (SELECT emp_no FROM dept_manager WHERE e.gender = 'F');

# SELECT first_name, last_name, gender from employees as e
# Join dept_emp on e.emp_no = dept_emp.emp_no
# WHERE gender = 'F' AND to_date = '9999-01-01' AND e.emp_no IN  (SELECT emp_no FROM dept_manager);

