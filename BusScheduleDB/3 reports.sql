--AS You did not give very specific instructions for the first 2 so I just displayed a list according to instructions.
--AS (You cannot do a group by on the route or the class if all the other columns are also just regular values not functions.)
-- We need reports by bus route to be handed to the drivers.
select s.AMRoute, s.FirstName, s.LastName, s.Class, s.Address, s.Stop
from StudentTransportation s
order by s.AMRoute

select s.PMRoute, s.FirstName, s.LastName, s.Address, s.Stop
from StudentTransportation s
order by s.PMRoute

select s.FridayRoute, s.FirstName, s.LastName, s.Address, s.Stop
from StudentTransportation s
order by s.FridayRoute
-- We need reports by class to be handed to the teachers.
select s.Class, s.FirstName, s.LastName, s.Address, s.Stop, s.AMRoute, s.PMRoute, s.FridayRoute
from StudentTransportation s
order by s.Class
-- We need a report listing total number of children and total number of stops per bus route bus, and we would want that separately by am ,pm and friday routes.
select NumberOfStudents = count(*), NumberOfStops = count(distinct s.stop), s.AMRoute
from StudentTransportation s
group by s.AMRoute

select NumberOfStudents = count(*), NumberOfStops = count(distinct s.stop), s.PMRoute
from StudentTransportation s
group by s.PMRoute

select NumberOfStudents = count(*), NumberOfStops = count(distinct s.stop), s.FridayRoute
from StudentTransportation s
group by s.FridayRoute

