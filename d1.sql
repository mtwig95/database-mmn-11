select *
from inspector
where date_part('year', current_date)- 4> date_part('year', sdate);
