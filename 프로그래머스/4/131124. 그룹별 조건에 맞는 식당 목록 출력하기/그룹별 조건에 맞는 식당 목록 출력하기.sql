-- 코드를 입력하세요
WITH CTE AS(
    SELECT COUNT(MEMBER_ID) AS CNT, MEMBER_ID
    FROM REST_REVIEW
    GROUP BY MEMBER_ID
    ORDER BY CNT DESC
    LIMIT 1
)

SELECT M.MEMBER_NAME, R.REVIEW_TEXT, DATE_FORMAT(R.REVIEW_DATE, '%Y-%m-%d') AS REVIEW_DATE
FROM MEMBER_PROFILE M
JOIN REST_REVIEW R
ON M.MEMBER_ID = R.MEMBER_ID
WHERE M.MEMBER_ID = (
    SELECT MEMBER_ID
    FROM CTE
)
ORDER BY REVIEW_DATE, REVIEW_TEXT
