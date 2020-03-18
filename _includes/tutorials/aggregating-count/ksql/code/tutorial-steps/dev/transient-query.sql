SELECT TITLE,
       COUNT(TICKET_TOTAL_VALUE) AS TICKETS_SOLD
FROM MOVIE_TICKET_SALES
GROUP BY TITLE
EMIT CHANGES
LIMIT 3;