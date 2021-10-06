select bookings.total_amount, bookings.book_ref , sum(ticket_flights.amount) as precio_booking
from ticket_flights natural join tickets natural join bookings
group by bookings.book_ref
order by bookings.book_ref asc
