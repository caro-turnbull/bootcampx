SELECT cohorts.name as cohort, count(assignment_submissions.*) as total_submissions
FROM cohorts
JOIN students ON cohorts.id = cohort_id
JOIN assignment_submissions ON students.id = student_id
GROUP BY cohort
ORDER By total_submissions DESC