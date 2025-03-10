-- Write your PostgreSQL query statement below
with dummy as(
    select person_name,weight, turn, sum(weight) over(order by turn) as total_weight from queue
)
select person_name
from dummy 
where total_weight<=1000
order by total_weight desc
limit 1;