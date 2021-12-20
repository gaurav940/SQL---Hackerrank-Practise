select f1.x, f1.y
from functions as f1
inner join functions as f2
on (f2.y = f1.x and f1.y = f2.x) 
group by f1.x, f1.y
having count(f1.x) > 1 or f1.x < f1.y
order by f1.x

