SELECT B.TITLE, B.BOARD_ID, A.REPLY_ID, A.WRITER_ID, A.CONTENTS, DATE_FORMAT(A.CREATED_DATE, '%Y-%m-%d') AS CREATED_DATE
FROM USED_GOODS_BOARD AS B
INNER JOIN USED_GOODS_REPLY AS A ON B.BOARD_ID = A.BOARD_ID
WHERE (B.CREATED_DATE LIKE '2022-10-%')
ORDER BY A.CREATED_DATE ASC, B.TITLE ASC;