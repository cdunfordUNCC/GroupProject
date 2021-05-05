use campus_eats_fall2020;
select ratings.overall_rating, ratings.restaurant_id, restaurant.restaurant_name,
case when ratings.overall_rating > 3 then 'The rating is great!'
else 'The rating is poor!'
end as Rating_Description
from ratings
join restaurant
group by restaurant_id
order by restaurant_name asc;
