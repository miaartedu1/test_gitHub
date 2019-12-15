﻿CREATE PROCEDURE [dbo].[sp_Persons_Select]
	@id int = 0 --Идентификатор лица
AS
Begin
	SELECT [Persons].[Id]
			,[Persons].[Surname]
			,[Persons].[Name]
			,[Persons].[Patronymic]
			,[Persons].[DateOfBirth]
	From [dbo].[Persons]
	Where [Persons].[Id]=@id;
END