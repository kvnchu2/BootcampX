SELECT students.name as student, AVG(duration) as average_assignment_duration
FROM students
JOIN assignment_submissions ON students.id = student_id
GROUP BY students.name
WHERE students.end_date is NULL
ORDER BY average_assignment_duration DESC;