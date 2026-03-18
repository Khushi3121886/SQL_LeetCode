# Write your MySQL query statement below
SELECT Email
FROM (
    SELECT 
        email AS Email,
        ROW_NUMBER() OVER (PARTITION BY email ORDER BY id) AS rn
    FROM Person
) Email
WHERE rn = 2;