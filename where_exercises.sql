USE employees;

-- Write individual queries to find the following things:
-- Employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).
-- Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN — 709 rows.
-- Now add a condition to find everybody with those names who is also male — 441 rows.
SELECT emp_no, first_name, last_name
FROM employees 
WHERE (first_name = 'Irena' 
OR first_name = 'Vidya' 
OR firstname = 'Maya')
AND gender = 'M';


-- -- Employees whose last name starts with 'E' — 7,330 rows.
-- Find all employees whose last name starts or ends with 'E' — 30,723 rows.
-- Duplicate the previous query and update it to find all employees whose last name starts
SELECT * FROM employees
WHERE last_name LIKE 'E%' 
OR last_name LIKE '%E';

 -- and ends with 'E' — 899 rows.
SELECT * FROM employees
WHERE last_name LIKE 'E%' 
AND last_name LIKE '%E';

-- Find all employees hired in the 90s and born on Christmas — 362 rows.
SELECT *
FROM employees 
where hire_date like '199%'
AND birth_date like '%-12-25'

-- Employees hired in the 90s — 135,214 rows.
SELECT * FROM employees
WHERE hire_date BETWEEN '1990-01-01' and '1999-12-31';

-- Employees born on Christmas — 842 rows.
SELECT * FROM employees
WHERE birth_date LIKE '%12-25';

-- Employees with a 'q' in their last name — 1,873 rows.
SELECT * FROM employees
WHERE last_name LIKE '%q%';

-- Find all employees with a 'q' in their last name but not 'qu' — 547 rows.
SELECT * FROM employees
WHERE last_name LIKE '%q%'
NOT LIKE '%qu';
