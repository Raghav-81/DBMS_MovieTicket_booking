\c movie

--1)Movies with rating greater than 3

select m_name
FROM movie
where Rating>=3;

--2)Movies released in year 2013

select m_name
FROM movie
where Release_date>='2013-01-01'
AND Release_date<'2013-12-30';

--3)movies playing in screen 1

select ti_id as ID,m_id
from TICKET
where SCREEN_no=1;

--4)Discounts greater than 30?

select d_name, d_id as code from
discount 
where d_value>=30;

--5) customers with no mail id listed

select c_id as id, c_name as name 
from customer
where mail is null;

--COMPLEX:

--1)customers who purchased more than 2 tickets.

select customer.c_id, c_name, Count(*)
from customer, soldTO
where Customer.c_id=Soldto.c_id
group by Customer.c_id
having count(*)>=2;

--2)ticket master who are currently free

select tm_name,tm_id
from ticketmaster
where tm_id not in (Select tm_id from ticket);


--3)theatre names that start with 'S'

Select t_id,t_name
from Theatre
where t_name~'^S.*$';

--4) ticket master who work in more than one theatre

select tmm.tm_id,tm_name, Count(*)
from ticketmaster as tmm, worksfor
where tmm.tm_id=worksfor.tm_id
group by tmm.tm_id
having count(*)>=1;


--5)what are different types of seats and how many were booked.

SELECT count(*) FILTER (WHERE seat_type = 'Luxury') AS luxury
     , count(*) FILTER (WHERE seat_type = 'Premium') AS  Premium    
, count(*) FILTER (WHERE seat_type = 'Regular')   AS Regular
FROM SeatDetails;



