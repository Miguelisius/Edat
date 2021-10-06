
with asientos_vacios_total as (
select a_o.flight_id, (a_t.asientos_totales - a_o.asientos_ocupados) as asientos_vacios, a_t.asientos_totales , a_o.asientos_ocupados
from (select flights.flight_id, count(*) as asientos_ocupados
    from ticket_flights natural join flights
    group by flights.flight_id
    order by count(*) asc) as a_o, 
    (select flights.flight_id, count(*) as asientos_totales
    from seats natural join aircrafts_data natural join flights
    group by flights.flight_id) as a_t
where a_o.flight_id = a_t.flight_id
)
select a_o.flight_id, (a_t.asientos_totales - a_o.asientos_ocupados) as asientos_vacios, a_t.asientos_totales , a_o.asientos_ocupados
from (select flights.flight_id, count(*) as asientos_ocupados
    from ticket_flights natural join flights
    group by flights.flight_id
    order by count(*) asc) as a_o, 
    (select flights.flight_id, count(*) as asientos_totales
    from seats natural join aircrafts_data natural join flights
    group by flights.flight_id) as a_t
where a_o.flight_id = a_t.flight_id
and a_t.asientos_totales - a_o.asientos_ocupados=(select(max(asientos_vacios)) from asientos_vacios_total)


