    SELECT 
        CAR_ID, 
        CASE 
            WHEN (SUM(CASE WHEN START_DATE <= '2022-10-16' AND END_DATE >= '2022-10-16' THEN 1 ELSE 0 END)) = 0 THEN '대여 가능'
            ELSE '대여중' END AS CAR_RENTAL_COMPANY_RENTAL_HISTORY 
    FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY 
    GROUP BY CAR_ID
    ORDER BY CAR_ID DESC;