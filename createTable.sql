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