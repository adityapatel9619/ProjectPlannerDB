USE [ProjectPlanner]
GO

IF EXISTS(SELECT 1 FROM sys.all_objects WHERE name = 'PP_NewEmployee_Register_INSERT' AND type = 'P')
BEGIN
	DROP PROCEDURE PP_NewEmployee_Register_INSERT
END
GO

CREATE PROCEDURE PP_NewEmployee_Register_INSERT
@sName VARCHAR(100),
@sEmail VARCHAR(100),
@sPhone VARCHAR(12),
@nDept INT
AS
BEGIN

		IF NOT EXISTS(SELECT 1 FROM PP_NewEmployee_Register WHERE sEmail = @sEmail)
		BEGIN
				INSERT INTO PP_NewEmployee_Register
				(
					sName,			sEmail,			sPhone,		nDept,
					dRegisterDate,	bIsEmpUpdated,	bIsActive
				)
				VALUES
				(
					@sName,			@sEmail,		@sPhone,	@nDept,
					GETDATE(),		0,				1
				)
		END
		ELSE
		BEGIN
				UPDATE PP_NewEmployee_Register 
				SET 
						bIsActive = 1
				WHERE 
						sEmail = @sEmail
		END
END