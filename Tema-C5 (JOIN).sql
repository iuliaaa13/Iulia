--1. Objective: Retrieve all orders and their corresponding customer names, specifically for individuals.
--Retrieve only the rows where the PersonType column in the Person.Person table has the value 'IN' (Individual consumers).
--Include the following columns in your results:
--FirstName, MiddleName, LastName from the Person.Person table.
--OrderDate, TotalDue from the Sales.SalesOrderHeader table.

select 
	pp.FirstName,
    pp.MiddleName,
    pp.LastName,
    ssoh.OrderDate,
    ssoh.TotalDue,
	pp.PersonType
from Sales.SalesOrderHeader ssoh
join Sales.Customer sc
	on ssoh.CustomerID = sc.CustomerID
join Person.Person pp
    on pp.BusinessEntityID = sc.PersonID
	where PersonType = 'IN'


--2. Objective: Retrieve the product names and corresponding categories from the Products table and the ProductCategory table.
--Include the following columns in your results:
--Name (use alias ProductName) from the Production.Product table.
--Name (use alias CategoryName) from the Production.ProductCategory table.

select
	pp.Name as ProductName,
	pps.Name as CategoryName
from Production.Product pp
join Production.ProductSubcategory pps
	on pp.ProductSubcategoryID = pps.ProductSubcategoryID
join Production.ProductCategory ppc
	on pps.ProductCategoryID = ppc.ProductCategoryID


--3. Objective: Retrieve a specific product using its location
--Retrieve the product name for the product stored in Subassembly location, Shelf W and Bin 9.
--Include the following columns in your results:
--Name (use alias ProductName) from the Production.Product table.
--Quantity from the Production.ProductInventory table.

select
	pp.Name as ProductName,
	ppi.Quantity
from Production.Product pp
join Production.ProductInventory ppi
	on pp.ProductID = ppi.ProductID
join Production.Location pl
	on ppi.LocationID = pl.LocationID
where pl.Name = 'Subassembly'
	and ppi.Shelf = 'W'
	and ppi.Bin = 9