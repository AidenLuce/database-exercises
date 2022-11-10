USE employees;


SELECT * from departments;
SELECT * FROM dept_manager LIMIT 10;
SELECT * FROM current_dept_emp LIMIT 10;
SELECT * FROM employees LIMIT 10;
SELECT * FROM titles LIMIT 10;

DESCRIBE departments;
DESCRIBE dept_manager;
DESCRIBE employees;

SHOW TABLES;


# Using the example in the Associative Table Joins section as a guide, write a query that shows each department along with the name of the current manager for that department.
SELECT CONCAT(first_name, ' ', last_name)AS Manager, rt2.dept_name AS Department
FROM employees AS lt
JOIN dept_manager AS rt1
ON rt1.emp_no = lt.emp_no
JOIN departments AS rt2
ON rt2.dept_no = rt1.dept_no
WHERE rt1.to_date = '9999-01-01';

# Find the name of all departments currently managed by women.
SELECT CONCAT(first_name, ' ', last_name)AS Manager, d.dept_name AS Department,e.gender AS Gender
FROM employees AS e
         JOIN dept_manager AS dm
              ON dm.emp_no = e.emp_no
         JOIN departments AS d
              ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01' AND e.gender = 'F';

# Find the current titles of employees currently working in the Customer Service department.
SELECT t.title AS Title, COUNT(T.title) AS Total FROM current_dept_emp
JOIN titles AS t ON t.emp_no = current_dept_emp.emp_no
WHERE dept_no = 'd009' AND t.to_date = '9999-01-01'
GROUP BY t.title;

# Find the current salary of all current managers.
SELECT d.dept_name AS Department_Name, CONCAT(first_name, ' ', last_name)AS Department_Manager, s.salary AS Salary
FROM employees AS e
         JOIN dept_manager AS dm
              ON dm.emp_no = e.emp_no
         JOIN departments AS d
              ON d.dept_no = dm.dept_no
        JOIN salaries s on e.emp_no = s.emp_no
WHERE dm.to_date = '9999-01-01' AND s.to_date = '9999-01-01';







