USE Kaggle
GO

IF NOT EXISTS (SELECT * FROM SYS.TABLES WHERE object_id = OBJECT_ID(N'dbo.honda') AND type = 'U')


CREATE TABLE honda(
	date_honda varchar(20),
	open_honda varchar(50),
	high_honda varchar(50),
	low_honda varchar(50),
	close_honda varchar(50),
	adj_close varchar(50),
	volume varchar(50),

)

TRUNCATE TABLE dbo.honda

BULK INSERT dbo.honda
FROM 'C:\Users\Limb\Documents\proyecto_parcial\python\dataset\HMC.csv'
WITH
(
	FIRSTROW = 2,
	FIELDTERMINATOR = ',',
	ROWTERMINATOR = '0x0a'
)
GO