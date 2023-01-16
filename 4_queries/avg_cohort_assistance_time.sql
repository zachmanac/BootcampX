SELECT cohorts.name as name, avg(completed_at - started_at) as average_assistance_time
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN cohorts ON cohort_id = cohorts.id
GROUP BY cohorts.name
-- for single highest cohort time only
-- ORDER BY average_assistance_time DESC
-- LIMIT 1;