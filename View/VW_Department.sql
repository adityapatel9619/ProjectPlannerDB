USE [ProjectPlanner]
GO

IF EXISTS(SELECT 1 FROM sys.all_objects  WHERE name = 'VW_Department')
BEGIN
		DROP VIEW VW_Department
END
GO
CREATE VIEW VW_Department
AS
	SELECT nID,sDeptName,bIsActive 
	FROM PP_Department