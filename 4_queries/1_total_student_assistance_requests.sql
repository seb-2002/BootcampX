select count(assistance_requests.*) as total_assistances, students.name as name
from assistance_requests
join students on students.id = assistance_requests.student_id
where students.name = 'Elliot Dickinson'
and assistance_requests.completed_at IS NOT NULL
group by students.name;