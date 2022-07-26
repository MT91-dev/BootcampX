-- Get the average duration of assistance requests for each cohort.
SELECT cohorts.name as cohort, avg(completed_at - started_at) as average_assistance_request_time
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = students.cohort_id
GROUP BY cohorts.name
ORDER BY average_assistance_request_time ASC;