-- 가장 비싼 식품의 ID, 이름, 코드, 분류, 가격 조회
SELECT PRODUCT_ID, PRODUCT_NAME, PRODUCT_CD, CATEGORY, PRICE
FROM FOOD_PRODUCT
ORDER BY PRICE DESC 
LIMIT 1;