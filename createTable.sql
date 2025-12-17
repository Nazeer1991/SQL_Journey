-- Create the Employees table
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    job_title VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    hire_date DATE
);

-- Insert some data into the table
INSERT INTO Employees (employee_id, first_name, last_name, job_title, department, salary, hire_date) VALUES
(1, 'Alice', 'Smith', 'Software Engineer', 'Engineering', 95000, '2022-08-15'),
(2, 'Bob', 'Johnson', 'Project Manager', 'Engineering', 105000, '2021-03-20'),
(3, 'Charlie', 'Williams', 'Salesperson', 'Sales', 72000, '2023-02-10'),
(4, 'Diana', 'Brown', 'Sales Manager', 'Sales', 110000, '2020-07-01'),
(5, 'Ethan', 'Jones', 'HR Specialist', 'HR', 65000, '2023-05-30'),
(6, 'Fiona', 'Garcia', 'Data Analyst', 'Analytics', 85000, '2022-11-01'),
(7, 'George', 'Miller', 'Software Engineer', 'Engineering', 98000, '2023-01-15'),
(8, 'Hannah', 'Davis', 'Data Analyst', 'Analytics', 88000, '2021-09-12');


--1. Write a query to retrieve all columns for all employees in the 'Engineering' department.
--2. Write a query to retrieve the first_name, last_name, and salary for all employees.
--3. Find the first_name and job_title of the employee with employee_id 4.
--4. Find all employees who work in the 'Sales' department AND have a salary greater than 100000.
--5. Find all employees who are either in the 'HR' department OR the 'Analytics' department.
--6. Find all 'Software Engineers' who are in the 'Engineering' department. (This seems redundant, but it's good practice with AND).

--SELECT * FROM Employees;
--SELECT * FROM Employees Where department = 'Engineering';
--SELECT first_name,last_name,salary from employees;
--SELECT first_name,job_title FROM Employees WHERE employee_id = '4';
--SELECT * FROM Employees where department = 'Sales' And salary >100000
--SELECT * FROM Employees Where department in ('HR','Analytics')
--SELECT * FROM Employees WHERE department ='Engineering' AND job_title ='Software Engineer'

-- Write a query to retrieve all employees, ordered by their salary from lowest to highest.
-- Write a query to retrieve all employees, ordered by their salary from highest to lowest.
-- Find all employees in the 'Engineering' department, and list them in alphabetical order by their last_name.
-- Retrieve the 3 most recently hired employees.
-- Find the first_name, job_title, and salary of the single highest-paid employee.
-- Challenge: Order all employees first by department in ascending order (A-Z), and then within each department, order them by salary in descending order (highest to lowest).

--SELECT * FROM Employees ORDER BY salary;
--SELECT * FROM Employees ORDER BY salary desc
--SELECT * FROM Employees WHERE department = 'Engineering' ORDER BY last_name;
--SELECT * FROM Employees ORDER BY hire_date desc limit 3
--SELECT first_name,job_title,salary FROM Employees ORDER BY salary DESC limit 1
--wrong way 6th challenge SELECT * From (SELECT * FROM Employees ORDER BY department ASC) ORDER BY salary DESC
--SELECT * FROM Employees ORDER BY department ASC,salary DESC

-- Find the total number of employees in the company.
-- Find the total number of employees in each department.
-- Calculate the average salary for all employees.
-- Calculate the average salary for each job title.
-- For each department, find the number of employees and the highest salary paid in that department.
-- Challenge: Find the average salary for each department, but only show the departments where the average salary is greater than $90,000. Order the results by the average salary in descending order.

--SELECT * FROM Employees
--SELECT COUNT(*) AS total_employees FROM Employees
--SELECT department,COUNT(first_name) As total_employee FROM Employees GROUP BY department
--SELECT AVG(salary) AS average_salary From Employees
--SELECT job_title,AVG(salary) as average_salary_jobtitle FROM Employees GROUP BY job_title

--SELECT department,COUNT(first_name) AS number_of_employee,MAX(salary) as highest_salary FROM Employees GROUP BY department
-- SELECT     department,AVG(salary) AS average_salary
-- FROM Employees
-- GROUP BY department
-- HAVING AVG(salary) > 90000
-- ORDER BY average_salary DESC;

