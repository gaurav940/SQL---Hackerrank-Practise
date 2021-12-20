select h.hacker_id, h.name, sum(t1.mScore) as totalScore
from hackers as h
inner join (
            select max(score) as mScore , hacker_id
            from submissions
            group by challenge_id, hacker_id ) as t1
on t1.hacker_id = h.hacker_id
group by h.hacker_id, h.name
having totalScore > 0
order by totalScore desc, h.hacker_id asc;
