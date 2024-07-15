//Query all columns for all American cities in the CITY table with populations larger than 100000. The CountryCode for America is USA.


//MYSQL

SELECT * FROM CITY 
WHERE CountryCode = 'USA' AND Population > 100000;

//MSSQL
SELECT * FROM CITY 
WHERE CountryCode='USA' AND Population>100000;

//MongoDB

db.CITY.find({CountryCode:'USA',Population:{$gt:100000}});

//PostgreSQL
SELECT * FROM CITY
WHERE CountryCode='USA' AND Population>100000;