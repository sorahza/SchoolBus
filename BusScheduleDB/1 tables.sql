use BusScheduleDB
go
drop table if exists StudentBusSchedule
go

create table dbo.StudentTransportation(
    StudentTransportationId int not null identity primary key,
    FirstName varchar(30) not null constraint ck_StudentTransportation_FirstName_cannot_be_blank check(FirstName <> ''),
    LastName varchar(30) not null constraint ck_StudentTransportation_LastName_cannot_be_blank check(LastName <> ''),
    Class char(5) not null constraint ck_StudentTransportation_Class_cannot_be_blank check(Class <> ''),
    Address varchar(25) not null constraint ck_StudentTransportation_Address_cannot_be_blank check(Address <> ''),
    Stop varchar(25) not null constraint ck_StudentTransportation_Stop_cannot_be_blank check(Stop <> ''),
    AMRoute char(5) not null constraint ck_StudentTransportation_AMRoute_cannot_be_blank check(AMRoute <> ''),
    PMRoute char(5) not null constraint ck_StudentTransportation_PMRoute_cannot_be_blank check(PMRoute <> ''),
    FridayRoute char(5) not null constraint ck_StudentTransportation_FridayRoute_cannot_be_blank check(FridayRoute <> '')
)
go
