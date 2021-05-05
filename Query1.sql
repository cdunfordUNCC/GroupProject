use campus_eats_fall2020;
select orders.restaurant_id, orders.total_price, orders.order_id, person.person_name,
case when orders.total_price > 15.00 then 'The price is over $15.00.'
else 'The price is under $15.00.'
end as money
from orders
join person
group by order_id
order by person_name asc;
