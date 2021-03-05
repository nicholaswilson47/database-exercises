USE employees;

SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name DESC, first_name DESC;

SELECT *, CONCAT(first_name,' ',last_name) AS 'Full name'
FROM employees
WHERE last_name LIKE 'E%' OR last_name LIKE '%e'
ORDER BY emp_no;

SELECT emp_no, first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1990/01/01' AND '1999/12/31';

SELECT *
FROM employees
WHERE birth_date LIKE '%12-25';

SELECT *
FROM employees
WHERE last_name LIKE '%q%';

SELECT *
FROM employees
WHERE first_name = 'Irena'
   OR first_name = 'Vidya'
   OR first_name = 'Maya';

SELECT *
FROM employees
WHERE (first_name = 'Irena'
    OR first_name = 'Vidya'
    OR first_name = 'Maya')
  AND gender = 'M';

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE 'E%'
   OR last_name LIKE '%e';

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%e';

SELECT *, DATEDIFF(CURDATE(),hire_date) AS 'Company Tenure in Days'
FROM employees
WHERE hire_date BETWEEN '1990/01/01' AND '1999/12/31'
  AND birth_date LIKE '%12-25'
ORDER BY birth_date, hire_date DESC;

SELECT *, (DATEDIFF(CURDATE(),hire_date)/365.25) AS 'Company Tenure in Years'
FROM employees
WHERE hire_date BETWEEN '1990/01/01' AND '1999/12/31'
  AND birth_date LIKE '%12-25'
ORDER BY birth_date, hire_date DESC;

SELECT *
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%';
