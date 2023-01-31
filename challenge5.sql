/* 5 - Preciso de uma lista com todas as pessoas que possuem o cartao de credito 'SuperiorCard' */

SELECT CONCAT(P.FirstName, ' ', P.MiddleName, ' ', P.LastName) AS Full_Name, SCC.CardType AS Card_Type
FROM Person.Person P
JOIN Sales.PersonCreditCard CC 
	ON CC.BusinessEntityID = P.BusinessEntityID
JOIN Sales.CreditCard SCC
	ON SCC.CreditCardID = CC.CreditCardID
WHERE SCC.CardType = 'SuperiorCard'
ORDER BY Full_Name