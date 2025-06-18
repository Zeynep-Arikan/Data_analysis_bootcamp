--ANY Operatörü
--Alt sorgudan gelen herhangi bir değer koşulu sağlaması durumunda TRUE olarak ilgili değerin koşu sağlamasını sağlar. 

--SELECT first_name, last_name FROM author
--WHERE id = ANY
--(
--  SELECT id
--  FROM book
--  WHERE title = 'Abe Lincoln in Illinois' OR title = 'Saving Shiloh'
--)
--ALL Operatörü
--Alt sorgudan gelen tüm değerlerin koşulu sağlaması durumunda TRUE olarak döner.

--SELECT first_name, last_name FROM author
--WHERE id = ALL
--(
--  SELECT id
--  FROM book
--  WHERE title = 'Abe Lincoln in Illinois' OR title = 'Saving Shiloh'
--)

--film tablosunda film uzunluğu length sütununda gösterilmektedir. Uzunluğu ortalama film uzunluğundan fazla kaç tane film vardır?

SELECT COUNT(*) AS film_count
FROM film
WHERE length > (
    SELECT AVG(length)
    FROM film
);


--film tablosunda en yüksek rental_rate değerine sahip kaç tane film vardır?
SELECT COUNT(*) AS film_count
FROM film
WHERE rental_rate > (
    SELECT MAX(rental_rate)
    FROM film
);
--film tablosunda en düşük rental_rate ve en düşün replacement_cost değerlerine sahip filmleri sıralayınız.
SELECT COUNT(*) AS film_count
FROM film
WHERE 
rental_rate = (SELECT MIN(rental_rate)) 
AND 
replacement_cost= (SELECT MIN(replacement_cost)) 
FROM film;

--payment tablosunda en fazla sayıda alışveriş yapan müşterileri(customer) sıralayınız.
SELECT 
    customer_id, 
    COUNT(*) AS total_payments
FROM 
    payment
GROUP BY 
    customer_id
ORDER BY 
    total_payments DESC;



