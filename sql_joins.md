Joins in SQL are used to combine data from two or more database tables based on related columns. JOIN tldr:

### INNER JOIN:
Returns only the rows where there is a match in both tables based on the specified condition.
Discards rows with no matching counterpart in the other table.

example: 
  ``` 
  SELECT column1, column2, column3
  FROM table1
  INNER JOIN table2 ON table1.key = table2.key; 
 ```
- Best suited when you want to retrieve data that exists in both tables based on a specific condition.
- Useful when you need to combine related data from two tables and filter out rows with no matching counterpart in the other table.
- Commonly used for retrieving data with one-to-many or many-to-many relationships.

### LEFT JOIN (or LEFT OUTER JOIN):
Returns all the rows from the left table and the matching rows from the right table.
If there is no match in the right table, the result will contain NULL values for the right table's columns.

example: 
```
  SELECT column1, column2, column3
  FROM table1
  LEFT JOIN table2 ON table1.key = table2.key;
```
  With this query, you will get all the rows from "table1" regardless of whether there is a match in "table2." 
  If there is no match in "table2" for a particular row in "table1," the columns from "table2" will contain NULL values in the result.
- Ideal when you want to retrieve all the rows from the left table (the first table in the join clause) and matching rows from the right table (the second table in the join clause).
- Useful for situations where you want to keep all the data from the left table, even if there is no match in the right table. The result will contain NULL values in columns from the right table for non-matching rows.

### RIGHT JOIN (or RIGHT OUTER JOIN):
Returns all the rows from the right table and the matching rows from the left table.
If there is no match in the left table, the result will contain NULL values for the left table's columns.

  example:
  ```
  SELECT column1, column2, column3
  FROM table1
  LEFT JOIN table2 ON table1.key = table2.key;
  ```
With this query, you will get all the rows from "table2" regardless of whether there is a match in "table1." 
If there is no match in "table1" for a particular row in "table2," the columns from "table1" will contain NULL values in the result.
- Similar to the LEFT JOIN, but it keeps all the rows from the right table and matching rows from the left table.
- Useful when you want to ensure all data from the right table is included, even if there is no match in the left table. 
The result will contain NULL values in columns from the left table for non-matching rows.

### FULL JOIN (or FULL OUTER JOIN):
Returns all the rows when there is a match in either the left or right table.
If there is no match in either table, the result will contain NULL values for the respective table's columns.

  example: 
  ```
  SELECT column1, column2, column3
  FROM table1
  FULL OUTER JOIN table2 ON table1.key = table2.key;
  ```
- Suitable when you want to retrieve all the rows from both tables, regardless of whether there is a match or not.
- Useful for situations where you want to see all data from both tables together, including rows with no matching counterpart in the other table. 
The result will contain NULL values in columns from the respective table for non-matching rows.

### CROSS JOIN (or Cartesian Join):
Returns the Cartesian product of rows from both tables (all possible combinations).
Doesn't require any condition to be specified, resulting in a large number of output rows.
It's important to note that the choice of join depends on the specific data retrieval needs 
and how the tables are related. INNER JOIN is the most commonly used type, but the others can be valuable when you need to retrieve different sets of data.

  example: 
  ```
  SELECT column1, column2, column3
  FROM table1
  CROSS JOIN table2;
  ```
- Probably dont use this unless you have a small db. 
- With this query, every row from "table1" will be combined with every row from "table2," resulting in all possible combinations of rows from both tables.
- Use in scenarios where you explicitly need to generate all possible combinations of rows from two tables.
- ...Will require a lot of compute power and isn't great for optimization lol. 
