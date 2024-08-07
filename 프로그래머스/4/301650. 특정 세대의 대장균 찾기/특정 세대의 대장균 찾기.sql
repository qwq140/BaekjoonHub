WITH RECURSIVE CTE AS (
    SELECT ID, 1 AS LEVEL
    FROM ECOLI_DATA 
    WHERE PARENT_ID IS NULL 
    UNION ALL
    SELECT E.ID, C.LEVEL + 1 AS LEVEL 
    FROM ECOLI_DATA E
    JOIN CTE C ON E.PARENT_ID = C.ID 
)
SELECT ID 
FROM CTE 
WHERE LEVEL = 3
ORDER BY ID;