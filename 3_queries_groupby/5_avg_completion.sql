SELECT students.name as student, avg(assignment_submissions.duration) as avg_assign_dur
FROM students
JOIN assignment_submissions ON students.id = student_id
Where students.end_date IS NULL
GROUP BY student
ORDER BY avg_assign_dur DESC
 

 