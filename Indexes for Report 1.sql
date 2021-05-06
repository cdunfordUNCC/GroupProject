explain select orders.delivery_charge, orders.total_price, restaurant.restaurant_name
from orders,restaurant
where restaurant.restaurant_name = orders.delivery_charge AND orders.total_price > 10.00
