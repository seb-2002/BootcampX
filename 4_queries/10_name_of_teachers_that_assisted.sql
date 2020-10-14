select distinct teachers.name as teacher, cohorts.name as cohort
from teachers
join assistance_requests on teacher_id = teachers.id
join students on student_id = students.id 
join cohorts on cohort_id = cohorts.id 
where cohorts.name = 'JUL02'
order by teacher;