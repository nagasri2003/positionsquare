-- SQL Query to find the second highest paying employee

SELECT
    EmployeeID,
    EmployeeName,
    Department,
    Salary
FROM
    (
        SELECT
            EmployeeID,
            EmployeeName,
            Department,
            Salary,
            -- Assigns a rank to each salary group. If two employees have the same salary, they get the same rank.
            DENSE_RANK() OVER (ORDER BY Salary DESC) AS SalaryRank
        FROM
            Employee
    ) AS RankedEmployees
WHERE
    SalaryRank = 2;
