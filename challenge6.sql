/* Este ano de 2022 foi excelente, e estamos muito felizes que a empresa atingiu suas metas. Por isso, queremos presentear alguns dos nossos funcionários mais antigos. 
Quero enviar um panetone ao endereço de cada um dos nossos engenheiros.
Por isso, preciso visualizar o endereço completo de todos os engenheiros que começaram na empresa antes de 2022.
Quero enviar junto com o presente, uma carta agradecendo pelo tempo de trabalho e dedicação.*/


SELECT CONCAT(P.FirstName, ' ', P.LastName) AS FullName, PEMAIL.EmailAddress, HR.JobTitle, CONCAT(PA.AddressLine1, PA.AddressLine2,' ', PA.City, ' ', PA.StateProvinceID, ' ', PA.PostalCode) AS Adress, HR.HireDate
FROM Person.Address PA
    INNER JOIN Person.BusinessEntityAddress PB 
        ON PA.AddressID = PB.Addressid
    INNER JOIN HumanResources.Employee HR 
        ON HR.BusinessEntityID = PB.BusinessEntityID
    INNER JOIN Person.Person P 
        ON P.BusinessEntityID = HR.BusinessEntityID
    INNER JOIN Person.EmailAddress PEMAIL 
        ON P.BusinessEntityID = PEMAIL.BusinessEntityID
WHERE HR.JobTitle LIKE '%Engineer%' AND HR.HireDate < '20211231'
ORDER BY FullName