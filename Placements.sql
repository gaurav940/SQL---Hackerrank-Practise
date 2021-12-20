select name
from students as s
inner join friends as f
on s.id = f.id

inner join packages as p1
on s.id = p1.id

inner join packages as p2
on p2.id = f.friend_id

where p1.salary < p2.salary
order by  p2.salary;


