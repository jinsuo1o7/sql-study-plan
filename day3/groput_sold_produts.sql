select sell_date, count(distinct product) as num_sold,
	group_concat(distinct product order product asc separator ',') as products
from activities
group by sell_date
order by sell_date;