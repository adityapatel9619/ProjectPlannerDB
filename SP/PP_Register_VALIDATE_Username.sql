USE [ProjectPlanner]
GO

IF EXISTS(SELECT 1 FROM sys.all_objects WHERE name = 'PP_Register_VALIDATE_Username' AND type = 'P')
BEGIN
	DROP PROCEDURE PP_Register_VALIDATE_Username
END
GO

CREATE PROCEDURE PP_Register_VALIDATE_Username
@sUsername VARCHAR(200)
AS
BEGIN

		SELECT 
					sUserName
		FROM PP_Register 
		WHERE 
			sUserName = @sUsername

END