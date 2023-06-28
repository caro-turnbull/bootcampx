Select (
    SELECT count(assignments)
    FROM assignments) 
    - count(assignment_submissions) as 
    tot_incomplete
FROM assignment_submissions
JOIN students on students.id = student_id
WHERE students.name =  'Ibrahim Schimmel'