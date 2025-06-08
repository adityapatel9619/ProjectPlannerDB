USE [ProjectPlanner]
GO

IF EXISTS(SELECT 1 FROM sys.all_objects WHERE name = 'PP_Register_SEARCH' AND type = 'P')
BEGIN
	DROP PROCEDURE PP_Register_SEARCH
END
GO

CREATE PROCEDURE PP_Register_SEARCH
AS
BEGIN

		SELECT 
				sFirstName, sLastName,	sEmailId,	sUserName,	sPassword
		FROM PP_Register 

END