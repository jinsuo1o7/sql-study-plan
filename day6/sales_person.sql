# Write your MySQL query statement below
select name from salesPerson
where sales_id not in (
    select sales_id
    from orders o
    where o.com_id in (select c.com_id from company c where name = 'RED')
);