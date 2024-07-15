//Query a list of CITY and STATE from the STATION table.
//The STATION table is described as follows:ID ,CITY,STATE,LAT_N,LAT_Wwhere LAT_N is the northern latitude and LONG_W is the western longitude.


//MYSQL
SELECT CITY,STATE FROM STATION

//MSSQL
SELECT CITY, STATE FROM STATION;


//MONGODB
db.STATION.find({}, { CITY: 1, STATE: 1, _id: 0 });

//POSTGRESQL
SELECT CITY, STATE FROM STATION;
