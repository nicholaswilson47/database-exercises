USE employees;

SELECT DISTINCT title
FROM titles;

SELECT title
FROM titles
GROUP BY title;

SELECT last_name AS 'Unique last names that start and end with E'
FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%e'
GROUP BY last_name;

SELECT concat(first_name,' ',last_name) AS 'Unique name combinations where last name starts and ends with E'
FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%e'
GROUP BY concat(first_name,' ',last_name);

SELECT last_name
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%'
GROUP BY last_name;

SELECT first_name, count(first_name) AS 'how_many_employees_with_firstname'
FROM employees
GROUP BY first_name
ORDER BY count(first_name) DESC;

SELECT last_name, first_name, COUNT(first_name) as 'total'
FROM employees
GROUP BY last_name, first_name
ORDER BY total ASC;
