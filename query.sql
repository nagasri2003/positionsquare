--SQL Query to find the second highest paying employee

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
            DENSE_RANK() OVER (ORDER BY Salary DESC) AS SalaryRank
        FROM
            Employee
    ) AS RankedEmployees
WHERE
    SalaryRank = 2;

