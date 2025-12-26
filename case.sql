SELECT 
    first_name, 
    salary,
    CASE 
        WHEN salary > 100000 THEN 'High Earner'
        WHEN salary BETWEEN 80000 AND 100000 THEN 'Mid Earner'
        ELSE 'Junior Earner'
    END AS salary_bracket
FROM Employees;