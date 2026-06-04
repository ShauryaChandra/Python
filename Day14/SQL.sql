-- USE employee_db;
-- DROP TABLE IF EXISTS employees;

-- CREATE TABLE employees(
--     emp_ID INT,
--     name VARCHAR(50),
--     department VARCHAR(50),
--     city VARCHAR(50),
--     salary INT
-- );

-- INSERT INTO employees VALUES
-- (1, 'Shaurya Chandra', 'Analytics', 'Delhi', 50000),
-- (2, 'Anuv Jain', 'Engineering', 'Mumbai', 60000),
-- (3, 'Prateek Kuhad', 'HR', 'Delhi', 40000),
-- (4, 'Rohan', 'Analytics', 'Pune', 45000),
-- (5, 'Neha', 'Marketing', 'Jaipur', 30000),
-- (6, 'Kabir', 'Marketing', 'Bangalore', 60000),
-- (7, 'Yash', 'Analytics', 'Mumbai', 80000),
-- (8, 'Ishita', 'HR', 'Jaipur', 50000),
-- (9, 'Priya', 'Engineering', 'Pune', 80000),
-- (10, 'Aman', 'Marketing', 'Mumbai', 30000);

-- -- SELECT, FROM, WHERE 


-- SELECT * FROM employees;
-- SELECT * FROM employees WHERE city = 'Delhi';
-- SELECT name,department FROM employees;
-- SELECT * FROM employees WHERE name LIKE '%ha%'

-- -- ORDER BY

-- SELECT * FROM employees;
-- SELECT * FROM employees ORDER BY Department ASC, salary DESC;

-- -- BETWEEN

-- SELECT * FROM employees WHERE salary BETWEEN 40000 and 60000;

-- -- IN

-- SELECT * FROM employees WHERE city IN ('Delhi', 'Mumbai');

-- -- Case Operator

-- SELECT name, salary,
-- CASE
--     WHEN salary < 40000 THEN "Needs improvement"
--     WHEN salary > 60000 THEN "Great"
--     ELSE "Doing fine"
-- END AS salary_details
-- FROM employees

-- -- GROUP BY

SELECT * FROM employees;

SELECT city, count(emp_ID) FROM employees GROUP BY city HAVING count(emp_ID) > 1 ORDER BY count(emp_ID) desc;


