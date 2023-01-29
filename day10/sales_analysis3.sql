# Write your MySQL query statement below
select p.product_id, p.product_name
from product p
left join sales s on p.product_id = s.product_id
group by p.product_id
having min(sale_date) >= cast('2019-01-01' as date) and max(sale_date) <= cast('2019-03-31' as date);