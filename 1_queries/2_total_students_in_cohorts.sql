SELECT COUNT(*) AS students_in_cohorts_7_8_9
FROM students
WHERE cohort_id IN(7,8,9);