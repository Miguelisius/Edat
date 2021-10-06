/*select fi.flight_id, pasajeros , airports_data.airports_code
from (select flights.flight_id , count(flights.departure_airport) as pasajeros
from boarding_passes natural join ticket_flights natural join flights
	 group by flights.flight_id) as fi
(select airports_data.airports_code 
from flights natural join airports_data) as ao
order by pasajeros desc*/


/*select fi.flight_id, pasajeros , ao.airport_code
from (select flights.flight_id , count(flights.departure_airport) as pasajeros
from boarding_passes natural join ticket_flights natural join flights
	 group by flights.flight_id) as fi,
(select airports_data.airport_code 
from flights natural join airports_data) as ao
order by pasajeros desc*/



/*select fi.flight_id, pasajeros , ao.airport_code
from (select flights.flight_id , count(flights.arrival_airport) as pasajeros
from boarding_passes natural join ticket_flights natural join flights
	 group by flights.flight_id) as fi,
(select airports_data.airport_code , flights.flight_id
from flights natural join airports_data ) as ao
where ao.flight_id=fi.flight_id
order by pasajeros desc*/

select airports_data.airport_code , count(flights.arrival_airport) as pasajeros
from boarding_passes natural join ticket_flights natural join flights natural join airports_data
where flights.arrival_airport = airports_data.airport_code
group by airports_data.airport_code
order by pasajeros desc