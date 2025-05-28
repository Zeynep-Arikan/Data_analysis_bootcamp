Select country from country where country like 'A%a'

select country from country where LENGTH(country) > 6 and LIKE '%n'
   
Select title from film where LENGTH(title) > = 4 like ' %t%'

select * from film where title like 'C%' and length >90 and rental_rate=2.99
