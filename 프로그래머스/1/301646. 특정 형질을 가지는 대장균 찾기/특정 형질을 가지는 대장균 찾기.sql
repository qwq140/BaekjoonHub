-- 코드를 작성해주세요
-- 형질 컬럼 GENOTYPE
-- 2번 형질 0010(2) x AND (1번 형질 0001(1) o OR 3번 형질 0100(4) o)
SELECT COUNT(*) AS COUNT FROM ECOLI_DATA WHERE (GENOTYPE & 2) = 0 AND ((GENOTYPE & 1) = 1 OR (GENOTYPE & 4) = 4);