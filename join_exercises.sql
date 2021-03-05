USE employees;

SELECT CONCAT(e.first_name,' ',e.last_name) AS full_name, d.dept_name
FROM employees AS e
         JOIN dept_emp AS de
              ON e.emp_no = de.emp_no
         JOIN departments d
              ON d.dept_no = de.dept_no
         JOIN dept_manager dm
              ON e.emp_no = dm.emp_no
WHERE dm.to_date = '9999-01-01' AND e.gender = 'F';

# SELECT DISTINCT t.title, CONCAT(e.first_name,' ',e.last_name) AS full_name
SELECT DISTINCT t.title, COUNT(*)
FROM titles AS t
         JOIN employees AS e
              ON e.emp_no = t.emp_no
         JOIN dept_emp AS de
              ON e.emp_no = de.emp_no
         JOIN departments d
              ON d.dept_no = de.dept_no
WHERE dept_name = 'Customer Service' AND
        de.to_date = '9999-01-01' AND
        t.to_date = '9999-01-01'
GROUP BY t.title;

SELECT CONCAT(e.first_name,' ',e.last_name) AS full_name, d.dept_name, s.salary
FROM employees AS e
         JOIN dept_emp AS de
              ON e.emp_no = de.emp_no
         JOIN departments d
              ON d.dept_no = de.dept_no
         JOIN dept_manager dm
              ON e.emp_no = dm.emp_no
         JOIN salaries s ON e.emp_no = s.emp_no
WHERE dm.to_date = '9999-01-01' AND
        s.to_date = '9999-01-01';