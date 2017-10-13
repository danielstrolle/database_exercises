USE employees;

SELECT
  COUNT(*), gender
FROM employees
WHERE (first_name = 'Irena'
       OR first_name = 'Vidya'
       OR first_name = 'Maya')
GROUP BY gender;

SELECT concat(first_name, ' ', last_name) AS 'Full Name'
FROM employees
WHERE last_name LIKE 'E%'
      AND last_name LIKE '%E';

SELECT concat(first_name, ' ', last_name) AS 'Full Name', datediff(curdate(), hire_date) AS 'Days Since Hire'
FROM employees
WHERE hire_date LIKE '199%'
      AND birth_date LIKE '%-12-25';

SELECT first_name, last_name, COUNT(first_name) AS 'Amount'
FROM employees
WHERE last_name LIKE '%q%'
      AND last_name NOT LIKE '%qu%'
GROUP BY first_name, last_name
ORDER BY Amount DESC;
