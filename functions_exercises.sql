USE employees;

#  Update your queries for employees whose names start and end with 'E'. Use concat() to combine their first and last name together as a single column in your results.
SELECT CONCAT(first_name, last_name) FROM employees WHERE (last_name LIKE 'E%') AND  (last_name LIKE '%E');

# Find all employees born on Christmas — 842 rows.
SELECT first_name, last_name, birth_date FROM employees WHERE (MONTH(birth_date) = 12 ) AND (DAY(birth_date) = 25) ORDER BY birth_date;

# Find all employees hired in the 90s and born on Christmas — 362 rows.
SELECT first_name, last_name,hire_date, birth_date FROM employees WHERE ((MONTH(birth_date) = 12 ) AND (DAY(birth_date) = 25)) AND (YEAR(hire_date)BETWEEN 1990 AND 2000)  ORDER BY hire_date, birth_date;

# Change the query for employees hired in the 90s and born on Christmas such that the first result is the oldest employee who was hired last. It should be Khun Bernini.
SELECT first_name, last_name,hire_date, birth_date FROM employees WHERE ((MONTH(birth_date) = 12 ) AND (DAY(birth_date) = 25)) AND (YEAR(hire_date)BETWEEN 1990 AND 2000)  ORDER BY birth_date DESC , hire_date;

# For your query of employees born on Christmas and hired in the 90s, use datediff() to find how many days they have been working at the company (Hint: You might also need to use now() or curdate()).
SELECT first_name, last_name,hire_date, birth_date,DATEDIFF(NOW(),hire_date) FROM employees WHERE ((MONTH(birth_date) = 12 ) AND (DAY(birth_date) = 25)) AND (YEAR(hire_date)BETWEEN 1990 AND 2000)  ORDER BY birth_date DESC , hire_date;

