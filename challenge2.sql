/* 2 - Preciso do nome e do endereço completo de todos os meus funcionarios que moram na California */

SELECT CONCAT(P.FirstName, ' ', P.MiddleName, ' ', P.LastName) AS Full_Name, CONCAT(PA.AddressLine1, ' ', PA.AddressLine2, ' ', PA.City) AS Full_Address, PA.StateProvinceID AS State_Code
FROM Person.Person P
JOIN Person.BusinessEntityAddress PB 
	ON PB.BusinessEntityID = P.BusinessEntityID
JOIN Person.Address PA 
	ON PA.AddressID = PB.AddressID
WHERE PA.StateProvinceID = 9
ORDER BY Full_Name