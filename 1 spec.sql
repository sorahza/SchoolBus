/*
	1) Choose a business scenario that can be captured in one table.
	2) Describe it as if you are the owner.
	3) List several reports that the business needs.
	4) Clarify some details with various questions and the owner's answers.
	5) Share your business scenario and spec with fellow students and instructor, do not include SQL.
	6) Create DB and tables to support business scenario.
	7) Populate with sample data
	8) Accept completed SQL and mark it
*/

/*
 I run a school and I need to keep track of all students and what bus they go on. We are constantly getting phone calls about late or missed buses and I need to be able to tell parents which bus
 they go on and tell teachers which bus a child goes on.
 I need a table that can hold student info name, address, class and bus route along with the stop they get off.

 Every child has a morning route, an afternoon route and a Friday afternoon route

 We need reports by bus route to be handed to the drivers.
 We need reports by class to be handed to the teachers.
 We need a report listing total number of children and total number of stops per bus route bus, and we would want that separately by am ,pm and friday routes.
 
 Questions
 Are there different stops for the same child for am,pm or Friday?
 No, the stop is always the same

 Are the am and pm the same route meaning the same number of kids on each route?
 No, we have different dismissal times in the schools so even if a child came on the same bus as another they can go home on different routes.

 How are the bus routes defined? 
 We get the bus routes from the bus company they are always 5 characters

 How are the classes referenced?
 first by grade then a dash with  the room number

*/

