SELECT *
FROM log_in_attempts
WHERE login_time > "18:00" AND success = 0;

SELECT * 
FROM log_in_attempts 
WHERE login_date = '2022-05-08' 
OR login_date = '2022-05-09';

SELECT * 
FROM log_in_attempts
WHERE NOT country LIKE "MEX%";

--or...

SELECT *
FROM log_in_attempts
WHERE country NOT LIKE "MEX%";

SELECT department, office, username 
FROM employees 
WHERE department = "Marketing" 
AND office LIKE '%East%';

SELECT *
FROM employees 
WHERE department = "Marketing" 
AND office LIKE 'East%';

SELECT *
FROM employees
WHERE department = "Finance" 
OR department = "Sales";

SELECT *
FROM employees
WHERE department != "Information Technology";