--Select only the faa, name, lat, and lon fields from airports.
SELECT faa, name, lat, lon
FROM airports;

--Repeat step three, but this time, rename lat and lon as latitude and longitude, respectively.
SELECT faa, name, lat AS "latitude", lon AS "longitude"
FROM airports;

--Repeat step four, but this time, round the results of latitude and longitude to two decimal places.
SELECT faa, name, ROUND(lat,2) AS laitude, ROUND(lon,2) AS longitude
FROM airports;

--This database also contains a weather table. Return a field, temp_celsius, that converts the measurements of the temp field into Celsius. 
--The formula to use is C = (F - 32) * 5/9.
  
SELECT (temp-32)*5/9 AS temp_celsius
FROM weather;

/* Now go to the planes table. Create and return a field, "plane_seats" with the format, "This plane seats X," 
where X is the value of the seats field. For example, row 1 of this field should read, "This plane seats 55."
*/
SELECT CONCAT('This Plane Seats ', seats,'.') AS plane_seats
FROM planes;

/*Now create and return a field, "model_seats."The first row of this field should read, 
"This 2004 Embraer EMB-145XR seats 55." Hint: use the INITCAP() function to convert manufacturer to proper case. */

SELECT CONCAT('This ',year,' ',INITCAP(manufacturer),' ',model,'seats', seats,'.')
		AS model_seats
FROM planes;
