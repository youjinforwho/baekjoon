-- 코드를 입력하세요
SELECT COUNT(USER_ID)
FROM USER_INFO
WHERE YEAR(JOINED) LIKE '2021' AND AGE >= 20 AND AGE <= 29