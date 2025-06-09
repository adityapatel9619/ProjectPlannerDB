USE [ProjectPlanner]
GO

IF EXISTS(SELECT 1 FROM sys.all_objects WHERE name = 'PP_Department_GET_API' AND type = 'P')
BEGIN
	DROP PROCEDURE PP_Department_GET_API
END
GO

CREATE PROCEDURE PP_Department_GET_API
AS
BEGIN
		SELECT nID,	sDeptName 
		FROM VW_Department
END