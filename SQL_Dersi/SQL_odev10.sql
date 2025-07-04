﻿--SELECT <sütun_adı>, <sütun_adı> ... FROM <tablo1_adı>
--LEFT JOIN <tablo2_adı>
--ON <tablo1_adı>.<sütun_adı> = <tablo2_adı>.<sütun_adı>;

--SELECT <sütun_adı>, <sütun_adı> ...
--FROM <tablo1_adı>
--RIGHT JOIN <tablo2_adı>
--ON <tablo1_adı>.<sütun_adı> = <tablo2_adı>.<sütun_adı>;

--SELECT <sütun_adı>, <sütun_adı> ... FROM <tablo1_adı>
--FULL JOIN <tablo2_adı>
--ON <tablo1_adı>.<sütun_adı> = <tablo2_adı>.<sütun_adı>;

--city tablosu ile country tablosunda bulunan şehir (city) ve ülke (country) 
--isimlerini birlikte görebileceğimiz LEFT JOIN sorgusunu yazınız.

SELECT 
    city.city AS city_name,
    country.country AS country_name
FROM 
    city
LEFT JOIN 
    country ON city.country_id = country.country_id;


--customer tablosu ile payment tablosunda bulunan payment_id ile customer tablosundaki first_name ve last_name 
--isimlerini birlikte görebileceğimiz RIGHT JOIN sorgusunu yazınız.
SELECT
    payment.payment_id,
    customer.first_name,
    customer.last_name
FROM 
    customer
RIGHT JOIN
    payment ON customer.customer_id = payment.customer_id;

	
--customer tablosu ile rental tablosunda bulunan rental_id ile customer tablosundaki first_name ve last_name 
--isimlerini birlikte görebileceğimiz FULL JOIN sorgusunu yazınız.
SELECT 
	rental.rental_id,
	customer.first_name,
	customer.last_name
FROM
	rental
FULL JOIN
    customer ON rental.customer_id = customer.customer_id;
