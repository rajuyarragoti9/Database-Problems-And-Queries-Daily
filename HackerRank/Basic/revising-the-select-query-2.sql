//Query the NAME field for all American cities in the CITY table with populations larger than 120000. The CountryCode for America is USA.

//MYSQL
SELECT NAME FROM CITY 
WHERE CountryCode='USA' AND Population>120000;

//MYSQL
SELECT NAME FROM CITY 
WHERE CountryCode='USA' AND Population>120000;

//MongoDB
db.CITY.find({CountryCode:'USA',Population:{$gt:120000}},{NAME:1,_id:0});

//PostgreSQL
SELECT NAME FROM CITY
WHERE CountryCode='USA' AND Population>120000;