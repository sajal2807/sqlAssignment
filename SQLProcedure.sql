Alter PROCEDURE AllOperations   @EmployeeId int ,@EmployeeUsername varchar(50) , @Email varchar(50) ,@DisplayName varchar (50),@DateOfJoining varchar(50),
								@DepartmentId int,
								@StatementType NVARCHAR(20) = ''
AS  
  BEGIN  
      IF @StatementType = 'Insert'  
        BEGIN  
            INSERT INTO Employee
			            (EmployeeId,
						EmployeeUsername,
						Email,
						DisplayName,
						DateOfJoining,
						DepartmentId)  
            VALUES     (@EmployeeId,
			               @EmployeeUsername,
						   @Email,
						   @DisplayName,
						   @DateOfJoining,
						   @DepartmentId)  
        END  
  
      IF @StatementType = 'Select'  
        BEGIN  
            SELECT *  
            FROM   Employee  
        END  

	  IF @StatementType = 'Update'  
        BEGIN  
            UPDATE Employee  
            SET    Email = @Email,  
                   DateOfJoining = @DateOfJoining
            WHERE  EmployeeId = @EmployeeId 
        END 
      
  END    
  Exec AllOperations @EmployeeId='12' ,@EmployeeUsername ='Pravesh Goyal',@Email='praveshg@gmail.com',@DisplayName='praveshg',@DateOfJoining='26-Jan-2020',@DepartmentId='3',@StatementType='Select';
  