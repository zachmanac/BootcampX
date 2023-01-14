-- SELECT cohorts.name AS cohort_name, COUNT(students) AS student_count
SELECT cohorts.name as cohort_name, count(students.*) AS student_count 
FROM students
students JOIN cohorts ON students.cohort_id = cohorts.id
GROUP BY cohorts.name
HAVING count(students) >= 18
-- ORDER BY count(students) ASC;
ORDER BY student_count;