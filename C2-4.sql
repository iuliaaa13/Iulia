select
category, COUNT(distinct rating)
from movie
group by category

--from AdventureWorks get how many products are for each color
select Color, count(*) as NmbProducts
from Production.Product
where Color is not null
group by Color
order by NmbProducts desc


select 
	Color, 
		min(ListPrice) as MinListPrice, 
		max(ListPrice) as MaxListPrice, 
		avg(ListPrice) as AvgListPrice
from Production.Product
where Color is not null
group by Color


select count(*)
from Sales.SalesOrderHeader

select top 10
*
from Sales.SalesOrderHeader

--OrderDate

--in ce an au fost cele mai multe comenzi?
select top 1
year(orderdate), count(*) as NmbOrders
from Sales.SalesOrderHeader
group by year(orderdate)
order by NmbOrders desc

--in ce zile ale lunii au fost cele mai multe comenzi
select top 2
day(orderdate), count(*) as NmbOrders
from Sales.SalesOrderHeader
group by day(orderdate)
order by NmbOrders desc

--in ce zile & luni ale lunii au fost cele mai multe comenzi
select  top 2
dayorder, datename(mm,monthorder) as monthname, NmbOrders
from
(
	select
	day(orderdate) dayorder, month(orderdate) monthorder, count(*) as NmbOrders
	from Sales.SalesOrderHeader
	group by day(orderdate), month(orderdate)
) vt
order by NmbOrders desc