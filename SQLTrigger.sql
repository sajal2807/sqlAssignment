CREATE TRIGGER triggergAftInsert ON [dbo].[Employee]   
    FOR INSERT  
    AS  
    declare @empid int;  
    declare @empusername varchar(50); 
    declare @email varchar(50);  
	declare @displayname varchar(50);
	declare @dateofjoining varchar(50);
	declare @departmentid int;
    declare @log_action varchar(100);  
    select @empid=i.EmployeeId from inserted i;   
    select @empusername=i.EmployeeUserName from inserted i;   
    select @email=i.Email from inserted i;
	select @displayname=i.DisplayName from inserted i;
	select @dateofjoining=i.DateOfJoining from inserted i;
	select @departmentid=i.DepartmentId from inserted i;
    set @log_action='Inserted Record -- After Insert Trigger.'; 
      
    insert into LogTable
    (EmployeeID,EmployeeUserName,Email,DisplayName,DateOfJoining,DepartmentId,Log_Action,Log_Timestamp)   
    values(@empid,@empusername,@email,@displayname,@dateofjoining,@departmentid,@log_action,getdate());  
      
    PRINT 'AFTER INSERT trigger fired.'  
    GO  
