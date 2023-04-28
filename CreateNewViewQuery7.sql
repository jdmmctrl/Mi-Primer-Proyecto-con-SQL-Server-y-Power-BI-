CREATE VIEW V_Ventas AS
SELECT
	H.SalesorderId,
	CAST(H.OrderDate AS DATE) AS Fecha_pedido,
	CAST(H.ShipDate AS DATE) AS Fecha_envio,
	H.TerritoryID, H.CustomerID,
	D.ProductID,
	D.OrderQty AS Unidades,
	D.UnitPrice AS Precio_unitario,
	D.OrderQty*D.UnitPrice AS Subtotal
from [Sales].[SalesOrderHeader] AS H
	LEFT JOIN [Sales].[SalesOrderDetail] AS D
		ON H.SalesOrderID = D.SalesOrderID