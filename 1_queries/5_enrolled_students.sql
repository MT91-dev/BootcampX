-- Get all of the students that are currently enrolled and order them by cohort_id.
SELECT name, id, cohort_id
FROM students
WHERE end_date IS NULL
ORDER BY cohort_id;