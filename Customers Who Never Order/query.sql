# Problem Description at -> https://leetcode.com/problems/customers-who-never-order/

SELECT Name AS Customers FROM Customers
WHERE Customers.Id NOT IN (SELECT CustomerId FROM Orders);

