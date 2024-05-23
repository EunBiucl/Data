# Write your MySQL query statement below
WITH manager AS (
  SELECT managerId
  FROM Employee
  GROUP BY managerId
  HAVING COUNT(managerId) >= 5
)
SELECT name
FROM Employee
WHERE id in (SELECT managerId FROM manager)