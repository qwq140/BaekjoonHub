-- 가장 큰 물고기 10마리의 ID, LENGTH 출력
-- 길이를 기준으로 내림차순
-- 같을경우 ID 기준으로 오름차순
-- 10cm 이하면 안된다.(10cm 이하면 NULL)
SELECT ID, LENGTH 
FROM FISH_INFO 
WHERE LENGTH IS NOT NULL 
ORDER BY LENGTH DESC, ID ASC 
LIMIT 10;

