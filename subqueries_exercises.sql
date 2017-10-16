USE employees;

SELECT e.first_name, e.last_name, e.hire_date
FROM employees AS e
WHERE hire_date = (
  SELECT hire_date
  FROM employees
  WHERE emp_no = 101010
);

SELECT title
FROM titles
WHERE emp_no IN (
  SELECT emp_no
  FROM employees
  WHERE first_name = "Aamod"
);

SELECT title
FROM titles
WHERE emp_no IN (
  SELECT emp_no
  FROM employees
  WHERE first_name = "Aamod"
)
GROUP BY title;

SELECT e.first_name, e.last_name
FROM employees AS e
WHERE emp_no IN (
  SELECT emp_no
  FROM dept_manager AS dm
  WHERE e.gender = 'f'
  AND dm.to_date = '9999-01-01'
);

SELECT d.dept_name
FROM departments AS d
JOIN dept_manager AS dm
ON dm.dept_no = d.dept_no
WHERE emp_no IN (
  SELECT emp_no
  FROM employees AS e
  WHERE e.gender = 'f'
  AND dm.to_date = '9999-01-01'
)
ORDER BY d.dept_name;