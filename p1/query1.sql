/*select   br.book_ref, tf.ticket_no , br.passenger_name , tf.arrival_airport , tf.departure_airport
from (select bookings.book_ref, tickets.ticket_no , tickets.passenger_name
	 from bookings natural join tickets ) as br,
	 (select ticket_flights.ticket_no , flights.arrival_airport , flights.departure_airport
	 from ticket_flights natural join flights) as tf
where tf.ticket_no = br.ticket_no
order by br.book_ref*/


/*select  *
from flights f1 natural join ticket_flights natural join flights f2
where f1.departure_airport = f2.arrival_airport
*/


/*select  DISTINCT s1.book_ref , s1.departure_airport 

from(select   br.book_ref, tf.ticket_no , br.passenger_name , tf.arrival_airport , tf.departure_airport

from (select bookings.book_ref, tickets.ticket_no , tickets.passenger_name
	 from bookings natural join tickets ) as br,
	 (select ticket_flights.ticket_no , flights.arrival_airport , flights.departure_airport
	 from ticket_flights natural join flights) as tf
where tf.ticket_no = br.ticket_no
order by br.book_ref) as s1 JOIN

(select   br.book_ref, tf.ticket_no , br.passenger_name , tf.arrival_airport , tf.departure_airport
from (select bookings.book_ref, tickets.ticket_no , tickets.passenger_name
	 from bookings natural join tickets ) as br,
	 (select ticket_flights.ticket_no , flights.arrival_airport , flights.departure_airport
	 from ticket_flights natural join flights) as tf
where tf.ticket_no = br.ticket_no
order by br.book_ref) as s2

ON s1.book_ref=s2.book_ref and s1.departure_airport= s2.arrival_airport */








/*select  DISTINCT count(*) as brr , s1.departure_airport 

from(select   br.book_ref, tf.ticket_no , br.passenger_name , tf.arrival_airport , tf.departure_airport

from (select bookings.book_ref, tickets.ticket_no , tickets.passenger_name
	 from bookings natural join tickets ) as br,
	 (select ticket_flights.ticket_no , flights.arrival_airport , flights.departure_airport
	 from ticket_flights natural join flights) as tf
where tf.ticket_no = br.ticket_no
order by br.book_ref) as s1 JOIN

(select   br.book_ref, tf.ticket_no , br.passenger_name , tf.arrival_airport , tf.departure_airport
from (select bookings.book_ref, tickets.ticket_no , tickets.passenger_name
	 from bookings natural join tickets ) as br,
	 (select ticket_flights.ticket_no , flights.arrival_airport , flights.departure_airport
	 from ticket_flights natural join flights) as tf
where tf.ticket_no = br.ticket_no
order by br.book_ref) as s2

ON s1.book_ref=s2.book_ref and s1.departure_airport= s2.arrival_airport 
group by s1.departure_airport */

/*
select    s1.departure_airport , s1.passenger_name

from(select   br.book_ref, tf.ticket_no , br.passenger_name , tf.arrival_airport , tf.departure_airport

from (select bookings.book_ref, tickets.ticket_no , tickets.passenger_name
	 from bookings natural join tickets ) as br,
	 (select ticket_flights.ticket_no , flights.arrival_airport , flights.departure_airport
	 from ticket_flights natural join flights) as tf
where tf.ticket_no = br.ticket_no
order by br.book_ref) as s1 JOIN

(select   br.book_ref, tf.ticket_no , br.passenger_name , tf.arrival_airport , tf.departure_airport
from (select bookings.book_ref, tickets.ticket_no , tickets.passenger_name
	 from bookings natural join tickets ) as br,
	 (select ticket_flights.ticket_no , flights.arrival_airport , flights.departure_airport
	 from ticket_flights natural join flights) as tf
where tf.ticket_no = br.ticket_no
order by br.book_ref) as s2

ON s1.book_ref=s2.book_ref and s1.departure_airport= s2.arrival_airport 
where s1.departure_airport ='SWT'
group by s1.departure_airport , s1.passenger_name*/


/* select    s1.departure_airport , s1.flight_id , s1.passenger_name

from(select   br.book_ref, tf.ticket_no , br.passenger_name , tf.arrival_airport , tf.departure_airport , tf.flight_id

from (select bookings.book_ref, tickets.ticket_no , tickets.passenger_name
	 from bookings natural join tickets ) as br,
	 (select ticket_flights.ticket_no , flights.arrival_airport , flights.departure_airport,flights.flight_id
	 from ticket_flights natural join flights) as tf
where tf.ticket_no = br.ticket_no
order by br.book_ref) as s1 JOIN

(select   br.book_ref, tf.ticket_no , br.passenger_name , tf.arrival_airport , tf.departure_airport , tf.flight_id
from (select bookings.book_ref, tickets.ticket_no , tickets.passenger_name
	 from bookings natural join tickets ) as br,
	 (select ticket_flights.ticket_no , flights.arrival_airport , flights.departure_airport , flights.flight_id
	 from ticket_flights natural join flights) as tf
where tf.ticket_no = br.ticket_no
order by br.book_ref) as s2

ON s1.book_ref=s2.book_ref and s1.departure_airport= s2.arrival_airport 
where s1.departure_airport ='SWT'
group by s1.departure_airport , s1.flight_id, s1.passenger_name 
*/


select  DISTINCT  s1.departure_airport , count(*) as billetes_id_v 

from(select   br.book_ref, tf.ticket_no , br.passenger_name , tf.arrival_airport , tf.departure_airport

from (select bookings.book_ref, tickets.ticket_no , tickets.passenger_name
	 from bookings natural join tickets ) as br,
	 (select ticket_flights.ticket_no , flights.arrival_airport , flights.departure_airport
	 from ticket_flights natural join flights) as tf
where tf.ticket_no = br.ticket_no
order by br.book_ref) as s1 JOIN

(select   br.book_ref, tf.ticket_no , br.passenger_name , tf.arrival_airport , tf.departure_airport
from (select bookings.book_ref, tickets.ticket_no , tickets.passenger_name
	 from bookings natural join tickets ) as br,
	 (select ticket_flights.ticket_no , flights.arrival_airport , flights.departure_airport
	 from ticket_flights natural join flights) as tf
where tf.ticket_no = br.ticket_no
order by br.book_ref) as s2

ON s1.book_ref=s2.book_ref and s1.departure_airport= s2.arrival_airport 
group by s1.departure_airport 
order by s1.departure_airport asc