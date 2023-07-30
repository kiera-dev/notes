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


-- Give the name and the per capita GDP for those countries with a population of at least 200 million.
SELECT name, gdp / population
FROM world
WHERE  population >= 200000000;



--Leetcode 

--175  
SELECT firstName, lastName, city, state
FROM Person 
LEFT JOIN Address ON Person.personId = Address.personID;

--176
SELECT MAX(salary) AS SecondHighestSalary
FROM Employee
WHERE salary NOT IN (SELECT MAX(salary) FROM Employee);

--177
--mkay. I really don't like leetcode. it's hard to learn with such an overly restrictive environment. 
CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
    SELECT DISTINCT salary
    FROM Employee e1
    WHERE N - 1 = (
      SELECT COUNT(DISTINCT e2.salary)
      FROM Employee e2
      WHERE e2.salary > e1.salary
    )
  );
END;

--184 
SELECT d.name AS Department, e.name AS Employee, e.salary AS Salary
FROM Employee e
JOIN Department d ON e.departmentId = d.id
WHERE (e.departmentId, e.salary) IN (
  SELECT departmentId, MAX(salary) AS max_salary
  FROM Employee
  GROUP BY departmentId
)
ORDER BY Department;



