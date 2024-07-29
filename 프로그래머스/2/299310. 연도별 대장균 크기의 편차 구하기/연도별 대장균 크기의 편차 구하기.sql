-- 출력 내용 : YEAR(분화 연도), YEAR_DEV(분화된 연도별 대장균 크기 편차), ID(대장균 개체의 ID) 
WITH SIZE_BY_YEAR AS (
    SELECT YEAR(DIFFERENTIATION_DATE) AS YEAR, MAX(SIZE_OF_COLONY) AS MAX_SIZE
    FROM ECOLI_DATA
    GROUP BY YEAR
)
SELECT YEAR(T1.DIFFERENTIATION_DATE) AS YEAR, T2.MAX_SIZE-T1.SIZE_OF_COLONY AS YEAR_DEV, T1.ID AS ID
FROM ECOLI_DATA T1
JOIN SIZE_BY_YEAR T2 
ON YEAR(T1.DIFFERENTIATION_DATE) = T2.YEAR
ORDER BY YEAR, YEAR_DEV;