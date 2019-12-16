CREATE PROCEDURE [dbo].[sp_Persons_Select]
	@id int = 0 --Идентификатор лица
AS
Begin
	SELECT [Persons].[Id]
			,[Persons].[Surname]
			,[Persons].[Name]
			,[Persons].[Patronymic]
			,[Persons].[DateOfBirth]
			,[Persons].[Email]
			,[Persons].[Phone]
			,DATEDIFF(mm, [Persons].[DateOfBirth], GETDATE())/12 AS [Age]
	From [dbo].[Persons]
	Where [Persons].[Id] = @id;
END