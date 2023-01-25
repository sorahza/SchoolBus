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

/*Sample Data
LastName	FirstName	Class	stop	AM	PM	Friday
Lincoln	Abraham	4-101	19th ave corner 45th st	A-JKL	P-JKL	F-JKL
Jackson	Andrew	8-100	13th ave corner 50th st	A-ABC	P-ABC	F-ABC
Johnson	Andrew	4-101	18th ave corner 48th st	A-JKL	P-JKL	F-JKL
Obama	Barack	8-104	17th ave corner 39th st	A-GHI	P-GHI	F-GHI
Harrison	Benjamin	4-102	15th ave corner 54th st	A-DEF	P-DEF	F-DEF
Coolidge	Calvin	6-102	13th ave corner 45th st	A-ABC	P-ABC	F-ABC
Arthur	Chester	4-102	13th ave corner 54th st	A-ABC	P-ABC	F-ABC
Trump	Donald	4-104	18th ave corner 39th st	A-JKL	P-JKL	F-JKL
Eisenhower	Dwight David	8-103	17th ave corner 45th st	A-GHI	P-GHI	F-GHI
Pierce	Franklin	4-101	19th ave corner 45th st	A-JKL	P-JKL	F-JKL
Roosevelt	Franklin Delano	5-103	15th ave corner 45th st	A-DEF	P-DEF	F-DEF
Washington	George	8-100	15th ave corner 46th st	A-DEF	P-DEF	F-DEF
Bush	George H. W.	4-104	14th ave corner 39th st	A-DEF	P-DEF	F-DEF
Bush	George W.	8-104	16th ave corner 39th st	A-GHI	P-GHI	F-GHI
Ford	Gerald R.	3-103	11th ave corner 39th st	A-ABC	P-ABC	F-ABC
Cleveland	Grover	4-102	14th ave corner 54th st	A-DEF	P-DEF	F-DEF
Cleveland	Grover	4-102	16th ave corner 54th st	A-GHI	P-GHI	F-GHI
Truman	Harry S	8-103	16th ave corner 45th st	A-GHI	P-GHI	F-GHI
Hoover	Herbert C.	4-103	14th ave corner 45th st	A-DEF	P-DEF	F-DEF
Garfield	James	0-101	12th ave corner 54th st	A-ABC	P-ABC	F-ABC
Madison	James	8-100	15th ave corner 46th st	A-DEF	P-DEF	F-DEF
Monroe	James	8-100	16th ave corner 46th st	A-GHI	P-GHI	F-GHI
Buchanan	James	4-101	18th ave corner 45th st	A-JKL	P-JKL	F-JKL
Carter	James Earl	4-103	12th ave corner 39th st	A-ABC	P-ABC	F-ABC
Polk	James K.	4-101	15th ave corner 49th st	A-DEF	P-DEF	F-DEF
Biden	Joe	6-104	19th ave corner 39th st	A-JKL	P-JKL	F-JKL
Tyler	John	4-100	14th ave corner 52nd st	A-DEF	P-DEF	F-DEF
Adams	John	4-100	16th ave corner 46th st	A-GHI	P-GHI	F-GHI
Kennedy	John Fitzgerald	2-103	18th ave corner 45th st	A-JKL	P-JKL	F-JKL
Adams	John Quincy	4-100	17th ave corner 46th st	A-GHI	P-GHI	F-GHI
Johnson	Lyndon Baines	6-103	19th ave corner 44th st	A-JKL	P-JKL	F-JKL
van Buren	Martin	4-100	13th ave corner 50th st	A-ABC	P-ABC	F-ABC
Fillmore	Millard	3-101	18th ave corner 45th st	A-JKL	P-JKL	F-JKL
Nixon	Richard Milhous	5-103	20th ave corner 45th st	A-JKL	P-JKL	F-JKL
Reagan	Ronald Wilson	8-103	13th ave corner 39th st	A-ABC	P-ABC	F-ABC
Hayes	Rutherford	4-101	12th ave corner 54th st	A-ABC	P-ABC	F-ABC
Roosevelt	Theodore	8-102	18th ave corner 54th st	A-JKL	P-JKL	F-JKL
Jefferson	Thomas	8-100	17th ave corner 46th st	A-GHI	P-GHI	F-GHI
Grant	Ulysses S.	8-101	19th ave corner 48th st	A-JKL	P-JKL	F-JKL
Harding	Warren	2-102	12th ave corner 45th st	A-ABC	P-ABC	F-ABC
McKinley	William	4-102	17th ave corner 54th st	A-GHI	P-GHI	F-GHI
Taft	William	4-102	19th ave corner 54th st	A-JKL	P-JKL	F-JKL
Harrison	William H.	7-100	13th ave corner 50th st	A-ABC	P-ABC	F-ABC
Clinton	William Jefferson	8-104	15th ave corner 39th st	A-DEF	P-DEF	F-DEF
Wilson	Woodrow	8-102	20th ave corner 54th st	A-JKL	P-JKL	F-JKL
Taylor	Zachary	1-101	16th ave corner 50th st	A-GHI	P-GHI	F-GHI

*/