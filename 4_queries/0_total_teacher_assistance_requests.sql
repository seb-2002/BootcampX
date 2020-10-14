SELECT COUNT(assistance_requests.*) AS total_assistances, teachers.name AS name 
FROM assistance_requests
JOIN teachers ON teachers.id = assistance_requests.teacher_id
WHERE teachers.name = 'Waylon Boehm'
AND assistance_requests.completed_at IS NOT NULL
GROUP BY teachers.name;

