CREATE VIEW v_cliente AS

SELECT C.CustomerID, CONCAT_WS(' ', P.FirstName, P.Lastname) AS Nombre, C.StoreID, C.TerritoryID
from [Sales].[Customer] AS C
LEFT JOIN [Person].[Person] AS P
ON C.PersonID = P.BusinessEntityID
WHERE C.PersonID IS NOT NULL;