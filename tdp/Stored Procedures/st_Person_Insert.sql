CREATE PROCEDURE [dbo].[sp_Persons_Insert]
	@id int = 0, --Идентификатор лица
	@Surname nvarchar(50),
	@Name nvarchar(50),
	@Patronymic nvarchar(50) = NULL,
	@DateOfBirth date = NULL
AS
Begin
	SET NOCOUNT ON;

	INSERT Into [dbo].[Persons]
					([Id],
					[Surname],
					[Name],
					[Patronymic],
					[DateOfBirth])
		Values
						(@Id,
						@Surname,
						@Name,
						@Patronymic,
						@DateOfBirth);
END