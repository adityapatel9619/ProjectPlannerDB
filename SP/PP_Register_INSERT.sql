USE [ProjectPlanner]
GO

IF EXISTS(SELECT 1 FROM sys.all_objects WHERE name = 'PP_Register_INSERT' AND type = 'P')
BEGIN
	DROP PROCEDURE PP_Register_INSERT
END
GO

CREATE PROCEDURE PP_Register_INSERT
@sFirstName VARCHAR(100),
@sLastName VARCHAR(100),
@sEmailId VARCHAR(200),
@sUserName VARCHAR(100),
@sPassword VARCHAR(200)
AS
BEGIN

		IF NOT EXISTS(SELECT 1 FROM PP_Register WHERE sEmailId = @sEmailId)
		BEGIN
				INSERT INTO PP_Register
				(
					sFirstName,		sLastName,		sEmailId,	
					sUserName,		sPassword,		dEntryDate,
					bIsActive
				)
				VALUES
				(
					@sFirstName,	@sLastName,		@sEmailId,
					@sUserName,		@sPassword,		GETDATE(),
					1
				)
		END

		DECLARE @Cnt INT = (SELECT COUNT(*) FROM PP_Register WHERE sEmailId = @sEmailId)
		IF( @Cnt = 1)
		BEGIN
			RETURN 1
		END
		ELSE
		BEGIN
			RETURN 0
		END
END