USE employees;


SELECT d.dept_name AS 'Department Name' , CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM departments AS d
JOIN dept_manager AS dm
ON dm.dept_no = d.dept_no
JOIN employees AS e
ON dm.emp_no = e.emp_no
WHERE dm.to_date = '9999-01-01'
ORDER BY `Department Name`;


SELECT d.dept_name AS 'Department Name' , CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM departments AS d
  JOIN dept_manager AS dm
    ON dm.dept_no = d.dept_no
  JOIN employees AS e
    ON dm.emp_no = e.emp_no
WHERE dm.to_date = '9999-01-01' AND e.gender = 'f'
ORDER BY `Department Name`;

SELECT t.title AS Title, COUNT(*) AS count
FROM titles AS t
JOIN dept_emp AS de
ON t.emp_no = de.emp_no
JOIN departments AS d
ON de.dept_no = d.dept_no
WHERE d.dept_no = 'd009' AND de.to_date = '9999-01-01' AND t.to_date = '9999-01-01'
GROUP BY Title;

SELECT d.dept_name AS 'Department Name' , CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager', s.salary AS Salary
FROM departments AS d
  JOIN dept_manager AS dm
    ON dm.dept_no = d.dept_no
  JOIN employees AS e
    ON dm.emp_no = e.emp_no
  JOIN salaries AS s
  ON e.emp_no = s.emp_no
WHERE dm.to_date = '9999-01-01' AND s.to_date = '9999-01-01'
ORDER BY `Department Name`;
