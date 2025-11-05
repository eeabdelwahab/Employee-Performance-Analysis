-- ================================================
-- Employee Performance Dashboard - Data Extraction
-- Date: Combined April & May datasets
-- ================================================

-- Combined extract from April & May source tables
SELECT 
    e.EmployeeID,
    e.Name,
    e.Age,
    e.Gender,
    e.Department,
    e.Country,
    e.Manager,
    e.JoinDate,
    s.Salary,
    s.Bonus,
    p.PerformanceScore,
    p.ProjectCount,
    e.WorkMode
FROM Employees_April e
LEFT JOIN Salaries_April s 
    ON e.EmployeeID = s.EmployeeID
LEFT JOIN Performance_April p
    ON e.EmployeeID = p.EmployeeID

UNION ALL

SELECT 
    e.EmployeeID,
    e.Name,
    e.Age,
    e.Gender,
    e.Department,
    e.Country,
    e.Manager,
    e.JoinDate,
    s.Salary,
    s.Bonus,
    p.PerformanceScore,
    p.ProjectCount,
    e.WorkMode
FROM Employees_May e
LEFT JOIN Salaries_May s 
    ON e.EmployeeID = s.EmployeeID
LEFT JOIN Performance_May p
    ON e.EmployeeID = p.EmployeeID;
