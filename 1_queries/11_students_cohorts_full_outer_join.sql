-- Join the two tables students and cohorts using the cohort_id column from the students table.
-- Using a full outer join this time to include foreign keys that have null values.

SELECT students.name as student_name, email, cohorts.name as cohort_name
FROM students FULL OUTER JOIN cohorts ON cohort_id = cohorts.id;