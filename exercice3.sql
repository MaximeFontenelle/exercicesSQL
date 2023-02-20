SELECT station, max(trafic) AS max_trafic
FROM '2021';

SELECT station, min(trafic) AS min_trafic
FROM '2021';

SELECT sum(trafic) AS total_trafic
FROM '2021';

SELECT paris_district, count(station) as total_stations
FROM '2021'
WHERE city = 'Paris'
GROUP BY paris_district
ORDER BY total_stations DESC;

SELECT count(station) as total_stations
FROM '2021';

SELECT count(station) as total_stations_RER
FROM '2021'
WHERE network='RER';

SELECT city, station
FROM '2021'
WHERE city IN ('Bobigny', 'La courneuve', 'Saint Denis', 'Pantin', 'Montreuil', 'Bagnolet')
ORDER BY city ASC;

SELECT *
FROM '2021'
WHERE city = 'Vincennes';

SELECT station
FROM '2021'
WHERE station LIKE 'porte%'
ORDER BY station DESC;

SELECT station, city
FROM '2021'
WHERE station LIKE '%-%'
ORDER BY city, station ASC;

SELECT station
FROM '2021'
WHERE connection_1='A'
OR connection_2='A'
OR connection_3='A'
OR connection_4='A'
OR connection_5='A';

SELECT *
FROM '2021'
WHERE city='Gagny';

SELECT "Station Ligne 14 : " || group_concat(station, ", ") AS "Stations Ligne 14"
FROM '2021'
WHERE connection_1=14
OR connection_2=14
OR connection_3=14
OR connection_4=14
OR connection_5=14;

SELECT station, trafic
FROM '2021'
WHERE connection_1=1
OR connection_2=1
OR connection_3=1
OR connection_4=1
OR connection_5=1
ORDER BY trafic DESC
LIMIT 5;

---BONUS---

SELECT station, avg(trafic) as avg_trafic
FROM '2021'
WHERE paris_district=13
GROUP BY station;

SELECT city
FROM '2021'
WHERE city != 'Paris';

SELECT station
FROM '2021'
WHERE trafic BETWEEN 5000000 AND 10000000;

SELECT station 
FROM '2021'
WHERE station LIKE '%marie%' 
OR station LIKE '%ville%';