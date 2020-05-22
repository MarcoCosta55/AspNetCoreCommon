/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
IF not exists (SELECT * FROM dbo.Food)
BEGIN
    INSERT INTO dbo.Food(Title, [Description], Price)
    VALUES ('Cheesburger Meal', 'A cheeseburger, fries and a Coke', 8.5),
    ('Hotdog Meal', 'Two hotdogs, fries and a Coke', 6.5),
    ('Vegan Meal', 'A large tofu salad, fries and a Water', 9.5);
END
