-- SELECT day, COUNT(assignments) AS total_assignments
SELECT day, count(*) as total_assignments 
FROM assignments
GROUP BY day
HAVING count(*) >= 10
ORDER BY day;