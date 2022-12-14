-- find all products
SELECT * FROM bestbuy.products;
-- find all products that cost $1400
SELECT * FROM bestbuy.products WHERE products.Price = 1400;
-- find all products that cost $11.99 or $13.99
SELECT * FROM bestbuy.products WHERE products.Price = 11.99 Or products.Price = 13.99;
-- find all products that do NOT cost 11.99 - using NOT
SELECT * FROM bestbuy.products WHERE NOT products.Price = 11.99;
-- find all products and sort them by price from greatest to least
SELECT * FROM bestbuy.products ORDER BY products.Price DESC;
-- find all employees who don't have a middle initial
SELECT * FROM bestbuy.employees WHERE employees.MiddleInitial IS NULL;
-- find distinct product prices
SELECT DISTINCT products.Price FROM bestbuy.products;
-- find all employees whose first name starts with the letter ājā
SELECT * FROM bestbuy.employees WHERE employees.FirstName LIKE 'j%';
-- find all Macbooks
SELECT * FROM bestbuy.products WHERE products.Name = 'Macbook';
-- find all products that are on sale
SELECT * FROM bestbuy.products WHERE products.OnSale = true;
-- find the average price of all productssales
SELECT AVG(products.Price) FROM bestbuy.products;
-- find all Geek Squad employees who don't have a middle initial
SELECT * FROM bestbuy.employees WHERE employees.Title LIKE '%Geek%Squad%' AND employees.MiddleInitial IS NULL;
-- find all products from the products table whose stock level is in the range -- of 500 to 1200. Order by Price from least to greatest. Hint: Use the between keyword
SELECT * FROM bestbuy.products WHERE products.StockLevel BETWEEN 500 AND 1200 Order By products.Price;