SELECT assignments.name
FROM assignments
Where id NOT IN (
  SELECT assignment_id
  FROM assignment_submissions
  JOIN students ON students.id = student_id
  WHERE students.name = 'Ibrahim Schimmel'
)