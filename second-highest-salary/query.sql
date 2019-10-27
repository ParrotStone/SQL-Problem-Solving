
# Problem Description at -> https://leetcode.com/problems/second-highest-salary/

-- First solution
SELECT MAX(Salary) AS SecondHighestSalary
FROM ((SELECT Salary FROM Employee
WHERE Salary <> (SELECT MAX(Salary) FROM Employee)) AS NX);


-- Second solution
SELECT (SELECT DISTINCT Salary
FROM Employee
ORDER BY Salary DESC
LIMIT 1 OFFSET 1) AS SecondHighestSalary;

-- Third solution
SELECT MAX(Salary) AS SecondHighestSalary FROM Employee WHERE Salary <> (SELECT MAX(Salary) FROM Employee);
# OR
# SELECT MAX(Salary) AS SecondHighestSalary FROM Employee WHERE Salary NOT IN (SELECT MAX(Salary) FROM Employee);
