SELECT students.name as student, avg(assignment_submissions.duration) as avg_assign_dur, avg(assignments.duration) as avg_est_dur
FROM students
JOIN assignment_submissions ON students.id = student_id
JOIN assignments ON assignments.id = assignment_id
Where students.end_date IS NULL
GROUP BY student
HAVING avg(assignment_submissions.duration) < avg(assignments.duration)
ORDER BY avg_assign_dur DESC
 