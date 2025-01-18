

-- 11. All salespeople either in Barcelona or in London
SELECT * FROM salespeople WHERE city='Barcelona' OR city='London';

-- OR
SELECT * FROM salespeople WHERE city IN ('Barcelona', 'London');


-- 12. All salespeople with commission between 0.10 and 0.12 (Boundary values excluded)
SELECT * FROM salespeople WHERE comm>0.10 AND comm<0.12 ;

-- OR
SELECT * FROM salespeople WHERE comm BETWEEN 0.10 AND 0.12;


-- 13. All customers with NULL values in city column
SELECT * FROM cust WHERE city IS NULL;


-- 14. All orders taken on Oct 3rd and Oct 4th 1994
SELECT * FROM orders WHERE odate BETWEEN '1994-10-03' AND '1994-10-04';


-- 15. All customers serviced by Peel or Motika
SELECT c.* FROM cust AS c JOIN salespeople AS s ON c.snum=s.snum WHERE s.sname IN ('Peel','Motika');


-- 16. All customers whose names begin with a letter from A to B
SELECT * FROM cust WHERE cname LIKE 'A%' AND 'B%';


-- 17. All orders except those with 0 or NULL value in amt field
SELECT * FROM orders WHERE amt IS NOT NULL AND amt != 0;

-- 18. Count the number of salespeople currently listing orders in the order table
SELECT COUNT(DISTINCT SNUM) AS salespeople_count
FROM orders;

-- 19. Largest order taken by each salesperson, datewise
SELECT s.sname,MAX(o.amt) as largest_order,o.odate FROM orders AS O 
JOIN salespeople AS s 
ON o.snum=s.snum
GROUP BY s.sname,o.odate
ORDER BY o.odate,s.sname;


-- 20. Largest order taken by each salesperson with order value more than $3000
SELECT s.sname, MAX(o.amt) AS largest_order FROM orders AS o
JOIN salespeople AS s
on o.snum=s.snum
GROUP BY s.sname
having MAX(o.amt) >3000;

					





