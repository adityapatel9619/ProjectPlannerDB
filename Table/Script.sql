USE ProjectPlanner
GO

IF NOT EXISTS(SELECT 1 FROM sys.all_objects WHERE name = 'PP_Register' AND type = 'U')
BEGIN
		CREATE TABLE PP_Register
		(
			nID INT IDENTITY(1,1) PRIMARY KEY,
			sFirstName VARCHAR(100),
			sLastName VARCHAR(100),
			sEmailId VARCHAR(200),
			sUserName VARCHAR(100),
			sPassword VARCHAR(200),
			dEntryDate DATETIME,
			bIsActive BIT
		)

		PRINT  'Table -> PP_Register -> Created'
END

GO

IF NOT EXISTS(SELECT 1 FROM sys.all_objects WHERE name = 'PP_Department' AND type = 'U')
BEGIN
		CREATE TABLE PP_Department
		(
			nID INT IDENTITY(1,1) PRIMARY KEY,
			sDeptName VARCHAR(200),
			bIsActive BIT
		)

		PRINT  'Table -> PP_Department -> Created'

		INSERT INTO PP_Department (sDeptName,bIsActive)
		VALUES ('Accounts',1),('Sales',1)

		PRINT  'Table -> PP_Department -> Data Inserted'
END