/* 4 - Preciso da contagem de todas as pessoas registradas com cartoes de credito no sistema agrupados por tipo de cartao */

SELECT COUNT(P.BusinessEntityID) AS Count, SCC.CardType AS Card_Type
FROM Person.Person P
JOIN Sales.PersonCreditCard CC
	ON CC.BusinessEntityID = P.BusinessEntityID
JOIN Sales.CreditCard SCC
	ON CC.CreditCardID = SCC.CreditCardID
GROUP BY SCC.CardType