--Aggregate Functions
-- 1. AVG - returns the average of the values in a group and it ignores null values.
	SELECT AVG(DISTINCT ListPrice)  
	FROM Production.Product;  
	GO
	--returns 437.4042

-- 2. MIN - returns the minimum value in the expression.
	SELECT MIN(TaxRate)
	FROM Sales.SalesTaxRate; 
	GO
	--returns 5.00

-- 3. SUM - returns the sum of all the values, or only the DISTINCT values. 
--    SUM can be used with numeric columns only. Null values are ignored.
	SELECT Color, SUM(ListPrice) AS Sum
	FROM Production.Product  
	WHERE Color is not null
		and ListPrice <> 0
		and Name LIKE 'Mountain%'
	GROUP BY Color
	ORDER BY Color;
	GO

-- 4. COUNT - returns the number of items found in a group.
	SELECT COUNT(*)
	FROM HumanResources.Employee;
	GO
	--returns 290

-- 5. MAX - returns the maximum value in the expression.
	SELECT MAX(TaxRate)  
	FROM Sales.SalesTaxRate;  
	GO  
	-- returns 19.60

-- String Functions
-- 6. REVERSE - returns the reverse order of a string order.
	SELECT FirstName, REVERSE(FirstName) AS Reverse
	FROM Person.Person
	WHERE BusinessEntityID = 1
	GO
	-- returns Ken -> neK

-- 7. CONCAT - returns a string resulting from the concatenation or joining of 2 or more string values.
	SELECT CONCAT ('Happy',' Birthday','!');
	GO
	-- returns Happy Birthday!

-- 8. LEFT - returns the left part of a character string with the specified number of characters.
	SELECT LEFT ('abcd', 2);
	GO
	-- returns ab

-- 9. REPLACE - replaces all occurrences of a specified string value with another string value.
	SELECT REPLACE('abcdefgh','fgh','yyy');
	GO
	-- returns abcdeyyy

-- 10. UPPER - returns a character expression with lowercase character data converted to uppercase.
	SELECT UPPER(LastName) AS LastName
	FROM Person.Person
	WHERE LastName = 'Abel'
	ORDER BY LastName;
	GO
	-- returns ABEL

-- 11. LTRIM - removes space character char(32) or other specified characters from the start of a string.
	SELECT LTRIM('123abcde.' , '123.');
	GO
	-- returns abcde.

-- 12. STUFF - inserts a string into another string.
-- It deletes a specified length of characters in the first string at the start position and then inserts the second string into the first string at the start position.
	SELECT STUFF('aabbcc', 2, 3, 'ddeeff');
	GO
	-- returns addeeffcc

-- 13. RIGHT - returns the right part of a character string with the specified number of characters.S
	SELECT RIGHT('qwerty', 2); 
	GO
	-- returns ty

-- Date&Time Functions
-- 14. CURRENT_TIMESTAMP - returns the current database system timestamp as a datetime value
	SELECT CURRENT_TIMESTAMP;
	GO
	-- returns the date and the hour

-- 15. DATE - returns an integer that represents the day of the specified date.
	SELECT DAY('2019-07-25');  
	GO
	-- returns 25

-- 16. MONTH - returns an integer that represents the month of the specified date.
	SELECT MONTH('2019-07-25'); 
	GO
	-- returns 7

-- Mathematical functions
-- 17. POWER - returns the value of the specified expression to the specified power.
	SELECT POWER (3, 2);
	GO
	-- returns 9
	
-- 18. SIN - returns the trigonometric sine of the specified angle, in radians, and in an approximate numeric, float, expression.
	SELECT SIN(55.23456);
	GO
	-- returns -0.967235984313332

-- 19. LOG - returns the natural logarithm of the specified float expression.
	SELECT LOG (10); 
	GO
	-- returns 2.30258509299405

-- Logical Function
-- 20. CHOOSE - returns the item at the specified index from a list of values.
	SELECT CHOOSE (2,'Ana','Maria','Gabriela');
	GO
	--returns Maria






