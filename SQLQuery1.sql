/*create table DepartmentInformation(DepartmentId int primary key, DepartmentName varchar(50) not null);

create table OfficeInformation(OfficeId int primary key, OfficeName varchar(50), Region varchar(50));

create table DesignationInformation(DesignationId int primary key, Designation varchar(50) not null);*/

create table DepartmentDetails(DepartmentId int primary key, DepartmentName varchar(50) );

insert into DepartmentDetails 
values(1,'FAS'),(2,'RTA'),(3,'CDS'),(4,'RPS');
select * from DepartmentDetails

create table Employee( EmployeeId int primary key,EmployeeUsername varchar(50) , Email varchar(50) ,DisplayName varchar (50),DateOfJoining varchar(50),
DepartmentId int , foreign key(DepartmentId) references DepartmentDetails(DepartmentId)
);


/*insert into Employee 
values(1,'Sajal Gupta','sajalg@navbackoffice.com','sajalg','16-July-2018','1'),
(2,'Priyank Mitra','priyankm@navbackoffice.com','priyankm','19-Feb-2019','3'),
(3,'Aakash Tanwar','aakasht@navbackoffice.com','aakasht','29-June-2019','2'),
(4,'Ayush Goyal','ayushg@navbackoffice.com','ayushg','11-Mar-2020','1'),
(5,'Tushar Bansal','tusharb@navbackoffice.com','tusharb','09-Feb-2020','4'),
(6,'Chirag Sharma','chirags@navbackoffice.com','chirags','22-Sep-2019','2'),
(7,'Honey Singhal','honeys@navbackoffice.com','honeys','02-Aug-2018','1'),
(8,'Suyash Pathak','suyashp@navbackoffice.com','suyashp','08-Nov-2019','3'),
(9,'Prayag Donariya','prayagd@navbackoffice.com','prayagd','15-June-2019','4'),
(10,'Yash Kumar','yashk@navbackoffice.com','yashk','18-Oct-2018','2'),
(11,'Virat Singh','virats@navbackoffice.com','virats','26-July-2020','3');

select * from Employee*/

--update operation

/*update Employee
set EmployeeUsername='Surya Kant',Email='suryak@gmail.com',DisplayName='suryak'
where EmployeeId='1'*/

--Join

select Employee.EmployeeId ,Employee.EmployeeUsername , Employee.Email ,Employee.DisplayName ,Employee.DateOfJoining ,DepartmentDetails.DepartmentName
from Employee 
inner join DepartmentDetails on DepartmentDetails.DepartmentId=Employee.DepartmentId


--Create LogTable
    create TABLE LogTable
    ( 
    EmployeeId int primary key,  
    EmployeeUserName varchar(50),  
    Email varchar(50),  
	DisplayName varchar (50),
	DateOfJoining varchar(50),
	DepartmentId int ,
    Log_Action varchar(100),  
    Log_Timestamp datetime  
    );
	
select * from LogTable


    