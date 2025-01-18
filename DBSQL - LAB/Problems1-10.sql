USE DBSQLFINAL;

SHOW TABLES;

SELECT * FROM cust;
SELECT * FROM orders;
SELECT * FROM salespeople;


-- 1. Display snum, sname, city and comm of all salespeople
SELECT sname,sname,city,comm FROM salespeople;

-- 2. Display all snum without duplicates from all orders
SELECT DISTINCT snum FROM orders;

-- 3. Display names and commissions of all salespeople in london
SELECT sname,comm FROM salespeople WHERE city = 'London';

-- 4. All customers with rating of 100
SELECT * FROM cust WHERE rating=100;

-- 5. Produce orderno, amount and date from all rows in the order table
SELECT onum AS orderno,amt AS amount,odate AS date FROM orders;

-- 6. All customers in San Jose, who have rating more than 200
SELECT * FROM cust WHERE city='San Jose' AND rating>200;

-- 7. All customers who were either located in San Jose or had a rating above 200
SELECT * FROM cust WHERE city='San Jose' OR rating>200;

-- 8. All orders for more than $1000
SELECT * FROM orders WHERE amt>1000;

-- 9. Names and cities of all salespeople in london with commission above 0.10
SELECT sname,city FROM salespeople WHERE city='London' AND comm>0.10;

-- 10. All customers excluding those with rating <= 100 unless they are located in Rome

SELECT * FROM cust WHERE rating>100 OR city = 'Rome';

