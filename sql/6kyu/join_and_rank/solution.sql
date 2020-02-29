SELECT 
people.*, 
--sale_count is the sale_rank
COUNT(sales.people_id) AS sale_count, 
COUNT(sales.people_id) AS sale_rank 
FROM people
INNER JOIN sales ON people.id = sales.people_id
GROUP BY people.id
ORDER BY COUNT(sales.people_id)