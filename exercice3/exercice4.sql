/* Q1 */
select a.station, a.trafic + b.trafic + c.trafic as total_trafic
from `2019` a
join `2020` b
on a.station = b.station
join `2021` c 
on b.station = c.station
order by total_trafic DESC
limit 10

/* Q2 */
select a.station, a.trafic + b.trafic + c.trafic + d.trafic as total_trafic
from `2018` a
join `2019` b
on a.station = b.station
join `2020` c
on b.station = c.station
join `2021` d 
on c.station = d.station
where a.city='Paris'
group by a.station
order by total_trafic ASC
limit 5

/* Q3 */
select a.station, a.trafic + b.trafic as total_trafic
from `2020` a
join `2021` b
on a.station = b.station
where a.city<>'Paris'
group by a.station
order by total_trafic DESC
limit 5

/* Q4 */
select a.station, a.trafic + b.trafic + c.trafic as total_trafic
from `2018` a
join `2019` b
on a.station = b.station
join `2020` c
on b.station = c.station
where a.city = 'Paris'
and a.network = 'Métro'
group by a.station
order by total_trafic ASC
limit 3
offset 10

/* Q5 */
select year, max(trafic)
from (
    select '2013' as year, sum(trafic) as trafic
    from `2013`
    union
    select '2014' as year, sum(trafic) as trafic
    from `2014`
    union
    select '2020' as year, sum(trafic) as trafic
    from `2020`
)

/* Q6 */
select avg(trafic) as trafic_moyen
from (
    select '2019' as year, sum(trafic) as trafic
    from `2019`
    where city = 'Paris'
    union
    select '2020' as year, sum(trafic) as trafic
    from `2020`
    where city = 'Paris'
    union
    select '2021' as year, sum(trafic) as trafic
    from `2021`
    where city = 'Paris'
)

/* Q7 */
select avg(trafic) as trafic_moyen
from (
    select '2017' as year, trafic
    from `2017`
    where station = 'SAINT-LAZARE'
    union
    select '2018' as year, trafic
    from `2018`
    where station = 'SAINT-LAZARE'
    union
    select '2019' as year, trafic
    from `2019`
    where station = 'SAINT-LAZARE'
    union
    select '2020' as year, trafic
    from `2020`
    where station = 'SAINT-LAZARE'
    union
    select '2021' as year, trafic
    from `2021`
    where station = 'SAINT-LAZARE'
)

select a.station, a.trafic + b.trafic as total 
from `2021` as a
inner join `2020` as b
on a.station = b.station
order by total DESC
limit 10