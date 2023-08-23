-- SELECT statement (Retrieve data from a table)
SELECT column1, column2, ...
FROM table_name
WHERE condition
ORDER BY column_name
LIMIT num_rows;

-- INSERT statement (Insert new rows into a table)
INSERT INTO table_name (column1, column2, ...)
VALUES (value1, value2, ...);

-- UPDATE statement (Update existing rows in a table)
UPDATE table_name
SET column1 = new_value1, column2 = new_value2, ...
WHERE condition;

-- DELETE statement (Delete rows from a table)
DELETE FROM table_name
WHERE condition;

-- Basic SELECT query with aliases and concatenation
SELECT column1 AS alias_name, CONCAT(column2, ' ', column3) AS full_name
FROM table_name;

-- DISTINCT keyword (Retrieve unique rows)
SELECT DISTINCT column1, column2
FROM table_name;

-- WHERE clause (Filter rows based on conditions)
SELECT column1, column2
FROM table_name
WHERE condition;

-- ORDER BY clause (Sort the result set)
SELECT column1, column2
FROM table_name
ORDER BY column1 ASC, column2 DESC;

-- LIMIT clause (Limit the number of rows in the result set)
SELECT column1, column2
FROM table_name
LIMIT num_rows;

-- Aggregate functions (Perform calculations on columns)
SELECT COUNT(*), AVG(column1), SUM(column2), MAX(column3), MIN(column4)
FROM table_name
GROUP BY column1;

-- GROUP BY clause (Group rows based on a column)
SELECT column1, COUNT(*)
FROM table_name
GROUP BY column1;

-- HAVING clause (Filter groups based on conditions)
SELECT column1, COUNT(*)
FROM table_name
GROUP BY column1
HAVING COUNT(*) > 2;

-- INNER JOIN (Retrieve data from two related tables)
SELECT column1, column2, column3
FROM table1
INNER JOIN table2 ON table1.key = table2.key;

-- LEFT JOIN (Retrieve data from the left table and matching rows from the right table)
SELECT column1, column2, column3
FROM table1
LEFT JOIN table2 ON table1.key = table2.key;

-- RIGHT JOIN (Retrieve data from the right table and matching rows from the left table)
SELECT column1, column2, column3
FROM table1
RIGHT JOIN table2 ON table1.key = table2.key;

-- FULL OUTER JOIN (Retrieve all rows from both tables)
SELECT column1, column2, column3
FROM table1
FULL OUTER JOIN table2 ON table1.key = table2.key;

-- CROSS JOIN (Generate all possible combinations of rows from two tables)
SELECT column1, column2, column3
FROM table1
CROSS JOIN table2;

-- Subquery (Nested SELECT statement)
SELECT column1, column2
FROM table1
WHERE column1 IN (SELECT column1 FROM table2 WHERE condition);

-- LIKE operator (Pattern matching with wildcards)
SELECT column1, column2
FROM table_name
WHERE column1 LIKE 'A%';

-- BETWEEN operator (Retrieve values within a range)
SELECT column1, column2
FROM table_name
WHERE column1 BETWEEN value1 AND value2;

-- IN operator (Retrieve rows with specific values)
SELECT column1, column2
FROM table_name
WHERE column1 IN (value1, value2, ...);

-- NULL handling (Retrieve rows with NULL values)
SELECT column1, column2
FROM table_name
WHERE column1 IS NULL;

-- CASE statement (Conditional expressions)
SELECT column1, 
       CASE 
           WHEN condition1 THEN 'Result1'
           WHEN condition2 THEN 'Result2'
           ELSE 'DefaultResult'
       END AS result
FROM table_name;
