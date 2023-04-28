CREATE VIEW V_Productos AS
SELECT
	P.ProductID,
	P.Name AS 'Producto',
	S.Name AS 'Subcategoria',
	C.Name AS 'Categoria'
FROM 
	[Production].[Product] AS P
	LEFT JOIN [Production].[ProductCategory] AS S
		ON P.ProductSubcategoryID = S.ProductCategoryID
	LEFT JOIN [Production].[ProductCategory] AS C
		ON S.ProductCategoryID = C.ProductCategoryID;