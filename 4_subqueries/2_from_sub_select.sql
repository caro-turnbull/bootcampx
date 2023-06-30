SELECT avg(tot_students) as avg_students
FROM (
  SELECT count(students) as tot_students
  FROM students
  JOIN cohorts on cohorts.id = cohort_id
  GROUP BY cohorts.name
) as totals_table