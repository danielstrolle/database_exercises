USE employees;

SELECT emp_no, first_name, last_name
FROM employees
WHERE (first_name = 'Irena'
       OR first_name = 'Vidya'
       OR first_name = 'Maya')
      AND gender = 'M'
ORDER BY last_name, first_name;

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE 'E%'
      OR last_name LIKE '%E';

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE 'E%'
      AND last_name LIKE '%E'
ORDER BY emp_no DESC;

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE 'E%';

SELECT emp_no, first_name, last_name
FROM employees
-- WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31';
where hire_date like '199%';

SELECT emp_no, first_name, last_name
FROM employees
-- WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31';
where hire_date like '199%'
      AND birth_date LIKE '%-12-25'
ORDER BY birth_date, hire_date DESC;

SELECT emp_no, first_name, last_name
FROM employees
WHERE birth_date LIKE '%-12-25';

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE '%q%';

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE '%q%'
      AND last_name NOT LIKE '%qu%';