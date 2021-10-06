with retraso as(select flights.flight_no , avg(flights.actual_arrival-flights.scheduled_arrival) as media
from flights
group by flights.flight_no
order by media desc) 

select flights.flight_no , avg(flights.actual_arrival-flights.scheduled_arrival) as media
from flights natural join retraso
where media=(select (MAX(media)) from retraso)
group by flights.flight_no
order by media desc