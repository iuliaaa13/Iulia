--1. Seclecting data
-- Write a query to select all the columns from Person.Person table
select 
*
from Person.Person;

--2. Filtering data
--Write a query to find all the persons whose first name is "Ken" from Person.Person table
select FirstName
from Person.Person
where FirstName='Ken'

--3. Ordering Data:
--Write a query to select all the columns from the Production.Product table, ordered by Name in ascending order.
select 
*
from Production.Product
order by Name asc;

--4. Limiting Results:
--Write a query to select the top 5 most expensive products from the Production.Product table.
select top 5
ListPrice
from Production.Product
order by ListPrice desc;

--5. Calculations:
--Write a query to calculate the average list price of all the products in the Production.Product table.
select AVG(ListPrice) as AvgListPrice
from Production.Product;

--6. Using Aggregate Functions:
--Write a query to find the maximum, minimum, and average ListPrice from the Production.Product table.
select MAX(ListPrice) as MaxListPrice, MIN(ListPrice) as MinListPrice, AVG(ListPrice) as AverageListPrice
from Production.Product;

--7. Using Aliases:
--Write a query to select the ListPrice column as Price from the Production.Product table.
select ListPrice as Price
from Production.Product;

--8. Using DISTINCT:
--Write a query to select distinct Color values from the Production.Product table.
select distinct 
color
from Production.Product

--9. Counting Records:
--Write a query to count the number of records in the Person.Person table.
select COUNT(*)
from Person.Person
