CREATE PROCEDURE [dbo].[sp_Persons_Update]
	@id int = 0, --Идентификатор лица
	@Surname nvarchar(50),
	@Name nvarchar(50),
	@Patronymic nvarchar(50),
	@DateOfBirth date,
	@Email nvarchar(400),
	@Phone varchar(15)
AS
Begin
	SET NOCOUNT ON;

	Update [dbo].[Persons]
		set	[Surname] = @Surname,
				[Name] = @Name,
				[Patronymic] = @Patronymic,
				[DateOfBirth] = @DateOfBirth,
				[DateCorrection] = GETDATE(),
				[Email] = @Email,
				[Phone] = @Phone
	WHERE [Id] = @Id;		
END