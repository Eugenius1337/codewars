SELECT 'US' AS location, * FROM ussales WHERE price > 50
UNION ALL
SELECT 'EU', * FROM eusales WHERE price > 50
ORDER BY location DESC, id