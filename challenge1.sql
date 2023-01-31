/* 1 - Preciso do nome completo de todos os meus funcionarios, suas respectivas datas de nascimento e qual o seu cargo na empresa */

SELECT CONCAT(P.FirstName, ' ', P.MiddleName, ' ', LastName) AS Full_Name, HR.BirthDate AS Birth_Date, HR.JobTitle
FROM Person.Person P
JOIN HumanResources.Employee HR 
	ON HR.BusinessEntityID = P.BusinessEntityID