explain select faculty.faculty_id, faculty.highest_degree, vehicle.make
from faculty,vehicle
where faculty.faculty_id = faculty.highest_degree = "PhD" AND vehicle.make = "Mercedes"