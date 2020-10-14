select assignments.id, day, chapter, name, count(assistance_requests.id) as total_requests
from assignments
join assistance_requests on assistance_requests.assignment_id = assignments.id
group by assignments.id
order by total_requests DESC;
