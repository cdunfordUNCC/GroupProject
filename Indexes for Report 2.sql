explain select student.major, ratings.driver_ratings, ratings.restaurant_rating
from student,ratings
where student.major = ratings.driver_ratings AND ratings.restaurant_rating > 4