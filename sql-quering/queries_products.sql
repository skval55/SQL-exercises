-- Comments in SQL Start with dash-dash --
INSERT INTO products (name, price, can_be_returned) VALUES ('chair', 44.00, false);
-- add new product chair with price of 44 and cannot be returned

INSERT INTO products (name, price, can_be_returned) VALUES ('stool', 25.99, true);
-- add new product stool with price of 25.99 and can be returned

INSERT INTO products (name, price, can_be_returned) VALUES ('table', 124.00, false);
-- add new product table with price of 124 and cannot be returned

SELECT * FROM products;
-- show all rows and columns

SELECT name FROM products;
-- show all names

SELECT name, price FROM products;
-- show all names and prices

INSERT INTO products (name, price, can_be_returned) VALUES ('skateboard', 110.00, false);     
-- add new product skateboard with price of 110 and cannot be returned

SELECT * FROM products WHERE can_be_returned;
-- show all products that can be returned

SELECT * FROM products WHERE price < 44;
-- show all products where the price is less than 44

SELECT * FROM products WHERE price BETWEEN 22.50 AND 99.99;
-- show all products where price is between 22.50 and 99.99

UPDATE products SET  price = price - 20;
-- lower price for all products by 20 

DELETE FROM products WHERE price < 25;
-- delete all products under 25 

UPDATE products SET  price = price + 20;
-- add 20 to each price for each product

UPDATE products SET can_be_returned = true;
-- upadate all products so they can be returned



