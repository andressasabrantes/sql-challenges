//7 - Quero todas as pessoas pertencentes ao departamento 'Research and Development' e que eu possa futuramente trocar o departamento e fazer uma nova consulta sem precisar reescrever um novo codigo.


CREATE OR ALTER PROCEDURE departmentPeople(@nameDepartment AS VARCHAR(60))
AS
	BEGIN
		SELECT CONCAT(P.FirstName, ' ', MiddleName, ' ', LastName) AS Full_Name, D.GroupName AS Departament_Name, D.DepartmentID AS Department_ID
		FROM Person.Person P
		JOIN HumanResources.EmployeeDepartmentHistory H
			ON P.BusinessEntityID = H.BusinessEntityID
		JOIN HumanResources.Department D
			ON D.DepartmentID = H.DepartmentID
		JOIN HumanResources.Employee E
			ON E.BusinessEntityID = P.BusinessEntityID
		WHERE D.GroupName = @nameDepartment
	END

EXEC departmentPeople @nameDepartment = 'Research and Development'
