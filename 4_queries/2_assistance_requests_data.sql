SELECT teachers.name AS teacher, students.name AS student, assignments.name AS assignment, (completed_at - started_at) AS duration
FROM assistance_requests
JOIN teachers on teachers.id = assistance_requests.teacher_id
join students on students.id = assistance_requests.student_id
join assignments on assignments.id = assistance_requests.assignment_id
order by duration;