select max(trafic)
from `2021`;

select min(trafic)
from `2021`;

select sum(trafic)
from `2021`;

select paris_district, count(station) as nb_stations
from `2021`
where city = 'Paris'
group by paris_district
order by nb_stations DESC;

select count(station) as nb_stations
from `2021`;

select count(station) as nb_stations
from `2021`
where network = 'RER';

select city, station 
from `2021`
where city in ('Bobigny', 'La Courneuve', 'Saint Denis', 'Pantin', 'Montreuil', 'Bagnolet')
order by city ASC;

/* Q8 */
select * 
from `2021`
where city = 'Vincennes'

/* Q9 */
select station
from `2021`
where station like 'porte%'
order by station DESC;

/* Q10 */
select station
from `2021`
where station like '%-%'
order by station ASC;

/* Q11 */
select station, connection_1, connection_2, connection_3, connection_4, connection_5
from `2021`
where connection_1 = 'A' 
or connection_2 = 'A' 
or connection_3 = 'A' 
or connection_4 = 'A' 
or connection_5 = 'A'

/* Q12 */
select * 
from `2021`
where city = 'Gagny'

/* Q13 */
select group_concat(station)
from `2021`
where connection_1 = '14'
or connection_2 = '14' 
or connection_3 = '14' 
or connection_4 = '14' 
or connection_5 = '14'

/* Q14 */
select station, trafic
from `2021`
where connection_1 = '1'
or connection_2 = '1' 
or connection_3 = '1' 
or connection_4 = '1' 
or connection_5 = '1'
order by trafic desc
limit 5;

/* Q15 */
select station, avg(trafic) as trafic_moy
from `2021`
where paris_district = '13'
group by station;

/* Q16 */
select city
from `2021`
where city <> 'Paris';

/* Q17 */
select station, trafic
from `2021`
where trafic between 5000000 and 10000000;

/* Q18 */
select station
from `2021`
where station like '%mairie%' 
or station like '%ville%';