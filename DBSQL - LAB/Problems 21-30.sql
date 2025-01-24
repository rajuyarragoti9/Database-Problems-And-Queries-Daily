Use dbsqlfinal;

-- 21. Which day had the highest total amount ordered?

Select odate ,Sum(amt) AS total_amount 
FROM orders 
GROUP BY odate
ORDER By total_amount DESC
LIMIT 1;

-- 22. Count all orders for Oct 3rd.
SELECT COUNT(*) AS total_orders
FROM orders
Where odate='1994-10-03';

-- 23. Count the number of different non NULL city values in customers table.
SELECT COUNT(DISTINCT city) AS Distinct_cities FROM cust ; 

-- 24. Select each customer’s smallest order.
SELECT cnum, MIN(amt) as smallest_order
FROM orders
GROUP BY cnum;

-- 25. First customer in alphabetical order whose name begins with G.
SELECT cname,city FROM cust 
WHERE cname LIKE 'G%'
ORDER BY cname 
LIMIT 1;

-- Q26: Get the output like “For dd/mm/yy there are ___ orders.

SELECT 
    DATE_FORMAT(odate, '%d/%m/%y') AS formatted_date, 
    COUNT(*) AS total_orders, 
    CONCAT('For ', DATE_FORMAT(odate, '%d/%m/%y'), ' there are ', COUNT(*), ' orders.') AS message
FROM Orders
GROUP BY odate;

-- Assume that each salesperson has a 12% commission. Produce order no., salesperson no., and the amount of the salesperson’s commission for that order.
SELECT onum,snum,(amt*0.12) as commision
FROM orders;

-- Q28: 28. Find the highest rating in each city and output in the form: “For the city (city), the highest rating is : (rating).”
SELECT 
city ,
MAX(rating) as highest_rating ,
concat('For The city ',city,' the highest rating is :',MAX(rating)) AS message
FROM cust
group by city;

-- 29. Display the totals of orders for each day and place the results in descending order.
SELECT odate, COUNT(onum) AS total_orders
FROM Orders
GROUP BY odate
ORDER BY total_orders DESC;

-- 30. All combinations of salespeople and customers who shared a city. (ie same city).
SELECT 
    s.snum AS Salesperson_Number, 
    s.sname AS Salesperson_Name, 
    c.cnum AS Customer_Number, 
    c.cname AS Customer_Name, 
    s.city AS Shared_City
FROM 
    Salespeople s
JOIN 
    Cust c
ON 
    s.city = c.city;
