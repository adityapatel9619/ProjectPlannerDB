IF EXISTS(SELECT 1 FROM sys.all_objects  WHERE name LIKE '%VW_RegistrationDetails%')
BEGIN
		DROP VIEW VW_RegistrationDetails
END
GO
CREATE VIEW VW_RegistrationDetails
AS

		SELECT 
				nID,		sFirstName,		sLastName,
				sEmailId,	sUserName,		sPassword,
				dEntryDate,	bIsActive
		FROM PP_Register