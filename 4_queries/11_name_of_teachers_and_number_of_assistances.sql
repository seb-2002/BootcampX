select teachers.name as teacher, COUNT(assistance_requests.id), cohorts.name
from teachers
join assistance_requests on teacher_id = teachers.id
join students on student_id = students.id 
join cohorts on cohort_id = cohorts.id 
where cohorts.name = 'JUL02'
group by teachers.name, cohorts.name
order by teacher;

