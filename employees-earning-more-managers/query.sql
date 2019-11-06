
-- Problem Description at -> https://leetcode.com/problems/employees-earning-more-than-their-managers/

# First solution
SELECT e.Name AS Employee FROM Employee e
WHERE e.Salary > (SELECT Salary 
                  FROM Employee
                  WHERE Id = e.ManagerId);


# Second solution
-- SELECT 
--     em.Name AS Employee
--     FROM 
--     Employee em, Employee mg
-- WHERE 
--     em.ManagerId = mg.Id
--         AND
--     em.Salary > mg.Salary;


# Third solution
-- SELECT 
--     em.Name AS Employee
-- FROM Employee em
-- JOIN Employee mg
-- ON 
--     em.ManagerId = mg.Id 
--     AND
--     em.Salary > mg.Salary;