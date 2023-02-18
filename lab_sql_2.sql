/*1.*/
select * from actor
where first_name='Scarlett';

/*2.*/
select * from actor
where last_name='Johansson';

/*3.*/
select count(film_id) as 'number of films' from film;

/*4.*/
select count(*) from film where rental_duration > 0;

/*5.*/
select max(rental_duration) as 'max rental duration', 
min(rental_duration) as 'min rentalduration' 
from film;

/*6.*/
select max(length) as 'max_duration', 
min(length) as 'min_duration' 
from film;

/*7.*/
select avg(length) as 'Average lenght' from film;

/*8.*/
select CONCAT(FLOOR(avg(length)/60),'h ',MOD(avg(length),60),'m')  as 'Average lenght' 
from film;

/*9.*/
select * from film
where length > 180;

/*10.*/
select concat(concat(upper(substring(first_name,1,1)),lower(substring(first_name,2)))," ",
concat(upper(substring(last_name,1,1)),lower(substring(last_name,2)))," - ", lower(email))
as name_email
 from customer;
 
 /*11.*/
 select max(length(title)) as 'Max title lenght' from film;