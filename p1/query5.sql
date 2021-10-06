select br.book_ref , tn.ticket_no
from (select boarding_passes.ticket_no 
	 from boarding_passes natural join ticket_flights natural join tickets) as tn , 
	 (select tickets.book_ref , tickets.ticket_no
	 from tickets natural join bookings) as br
where br.ticket_no = tn.ticket_no and br.book_ref