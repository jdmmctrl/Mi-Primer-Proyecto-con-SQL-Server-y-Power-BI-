CREATE VIEW v_territorio AS
SELECT a.TerritoryID, CASE WHEN a.CountryRegionCode = 'US' THEN 'Unite States' ELSE a.Name END AS Pais, a.CountryRegionCode, [Group] AS Grupo
FROM [Sales].[SalesTerritory] AS a;