create database proj2;
use proj2;

select * from disaster_events;
select * from disaster_impact;
ALTER TABLE disaster_events
CHANGE `disno.` disno VARCHAR(50);

ALTER TABLE disaster_impact
CHANGE `disno.` disno VARCHAR(50);


select 
e.country,
e.disaster_type,
i.total_deaths,
i.total_affected
from disaster_events e 
join disaster_impact i
on e.disno = i.disno;



SELECT 
    e.event_name,
    e.country,
    i.total_deaths
FROM disaster_events e
JOIN disaster_impact i
ON e.disno = i.disno
ORDER BY i.total_deaths DESC
LIMIT 10;

SELECT  
    e.country,  
    SUM(i.total_damage_000_us$) AS damage  
FROM disaster_events e  
JOIN disaster_impact i  
ON e.disno = i.disno  
GROUP BY e.country  
ORDER BY damage DESC;

