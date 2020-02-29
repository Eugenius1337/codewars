SELECT *
FROM departments
WHERE EXISTS
(SELECT 1
FROM sales
-- Can access both tables like this during subquery
-- Just match departments and then check for the price
WHERE departments.id = sales.department_id AND sales.price >= 98)