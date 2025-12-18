-- Your Problems
-- Now, let's write some queries that pull data from both tables.

-- 1.Write a query to list each employee's first_name and their department_name.
-- 2.Write the same query as #1, but use table aliases (e for Employees, d for Departments) to make it shorter.
-- 3.Find the first_name and location for all employees who work in 'Building A'.
-- 4.List all employees, but display their full name (concatenated as 'FirstName LastName') and their department name. Order the results by department name, then by last name.
-- 5.Count the number of employees in each department. Show the department_name and the employee_count.
-- 6.Challenge: Find the average salary for each department, showing the department_name and the average_salary. Order the results by the highest average salary first.

--Create the new Departments table
--CREATE TABLE Departments(
--	department_id INT PRIMARY KEY,
--	department_name VARCHAR(50) NOT NULL,
--	Location VARCHAR(50)
--)
-- Insert data into departments table
--INSERT INTO Departments (department_id,department_name,location) VALUES
--(1, 'Engineering', 'Building A'),
--(2, 'Sales', 'Building B'),
--(3, 'HR', 'Building C'),
--(4, 'Analytics', 'Building A'),
--(5, 'Marketing', 'Building B');

--SELECT * FROM Employees --Departments

-- Add a new foreign key column to the Employees table
--ALTER TABLE Employees ADD COLUMN department_id INT;

--UPDATE Employees SET department_id = 1 WHERE department = 'Engineering'
--UPDATE Employees SET department_id = 2 WHERE department = 'Sales'
--UPDATE Employees SET department_id = 3 WHERE department = 'HR'
--UPDATE Employees SET department_id = 4 WHERE department = 'Analytics'

--3
--SELECT 
--    e.first_name, 
--    d.location
--FROM 
--    Employees AS e
--INNER JOIN 
--    Departments AS d ON e.department_id = d.department_id
--WHERE 
--    d.location = 'Building A';

--4
--SELECT e.first_name||''||e.last_name AS full_name,d.department_name FROM Employees AS e
--INNER JOIN Departments AS d
--on e.department_id = d.department_id
--ORDER BY d.department_name, e.last_name

--5
--SELECT d.department_name,COUNT(d.department_name) AS employee_count 
--FROM Employees AS e INNER JOIN Departments AS d
--ON e.department_id = d.department_id
--GROUP BY d.department_name

--6
--SELECT d.department_name,AVG(salary) AS average_salary 
--FROM Employees as e 
--INNER JOIN Departments as d
--ON e.department_id = d.department_ID
--GROUP BY d.department_name
--ORDER BY average_salary desc



