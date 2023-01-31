/* 3 - Preciso do nome dos produtos e a soma de suas vendas, agrupadas  */

SELECT P.Name, SUM(OD.LineTotal) AS Total
FROM Production.Product P
JOIN Purchasing.PurchaseOrderDetail OD
	ON OD.ProductID = P.ProductID
GROUP BY Name
ORDER BY NAME