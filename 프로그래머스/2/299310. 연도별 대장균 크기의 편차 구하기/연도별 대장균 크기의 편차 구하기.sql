-- 코드를 작성해주세요
SELECT YEAR(E1.DIFFERENTIATION_DATE) AS YEAR, CASE
    WHEN E1.SIZE_OF_COLONY THEN (MAX - E1.SIZE_OF_COLONY)
END AS YEAR_DEV, E1.ID
FROM ECOLI_DATA E1
JOIN (SELECT YEAR(DIFFERENTIATION_DATE) AS DIFFERENTIATION_DATE, MAX(SIZE_OF_COLONY) AS MAX 
FROM ECOLI_DATA
GROUP BY YEAR(DIFFERENTIATION_DATE)) E2
ON YEAR(E1.DIFFERENTIATION_DATE) = E2.DIFFERENTIATION_DATE
ORDER BY YEAR, YEAR_DEV