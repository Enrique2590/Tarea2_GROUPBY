-- ejercicio 1
select first_name || ' '|| last_name, to_char(rental_date,'DD/MM/YYYY') , count(*) as rentals
from rental r
join customer c on r.customer_id = c.customer_id
group by first_name || ' '|| last_name, to_char(rental_date,'DD/MM/YYYY') 
having count(*) > 1
order by first_name || ' '|| last_name

-- ejercicio 2
select country, extract(year from rental_date) || ' ' || extract(month from rental_date) as year_month, count(*) as rentals
from rental r
join customer c on r.customer_id = c.customer_id
join address ad on c.address_id = ad.address_id
join city ci on ad.city_id = ci.city_id
join country co on ci.country_id = co.country_id
group by country, year_month
order by country, year_month

-- ejercicio 3
select extract(year from rental_date) || ' ' || extract(month from rental_date) as "Año-Mes", s.staff_id as "Codigo de Empleado", s.first_name || ' ' || s.last_name  as "Nombre completo del Empleado", city as "Ciudad de la sucursal", sum(amount) as "Monto total pagado"
from rental r
join payment p on r.rental_id = p.rental_id
join staff s on p.staff_id = s.staff_id
join store st on s.store_id = st.store_id
join address ad on st.address_id = ad.address_id
join city ci on ad.city_id = ci.city_id
group by "Año-Mes", "Codigo de Empleado", "Nombre completo del Empleado", "Ciudad de la sucursal"
order by "Nombre completo del Empleado", "Año-Mes"

-- ejercicio 4
select extract(year from rental_date) || ' ' || extract(month from rental_date) as "Año-Mes", sum(amount), sum(rental_rate)
from rental r
join payment p on r.rental_id = p.rental_id  
join inventory i on r.inventory_id = i.inventory_id
join film f on i.film_id = f.film_id
group by "Año-Mes"
