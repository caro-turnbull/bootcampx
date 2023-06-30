SELECT cohorts.name as cohort,  sum(completed_at - started_at) as duration
from assistance_requests
JOIN students ON students.id = student_id
JOIN cohorts on cohorts.id = cohort_id
Group By cohorts.name
ORDER BY duration