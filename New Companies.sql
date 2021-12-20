select c.company_code, c.founder, count(distinct(lm.lead_manager_code)), count(distinct(sm.senior_manager_code)), count(distinct(mn.manager_code)), count(distinct(e.employee_code))

from company as c
inner join lead_manager as lm
on lm.company_code= c.company_code

inner join senior_manager as sm
on sm.lead_manager_code = lm.lead_manager_code

inner join manager as mn
on mn.senior_manager_code = sm.senior_manager_code

inner join employee as e
on e.manager_code = mn.manager_code

group by c.company_code, c.founder
order by c.company_code

