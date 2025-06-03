
--Aşağıdaki sorgu senaryolarını dvdrental örnek veri tabanı üzerinden gerçekleştiriniz.

--film tablosunda bulunan replacement_cost sütununda bulunan birbirinden farklı değerleri sıralayınız.
--film tablosunda bulunan replacement_cost sütununda birbirinden farklı kaç tane veri vardır?
--film tablosunda bulunan film isimlerinde (title) kaç tanesini T karakteri ile başlar ve aynı zamanda rating 'G' ye eşittir?
--country tablosunda bulunan ülke isimlerinden (country) kaç tanesi 5 karakterden oluşmaktadır?
--city tablosundaki şehir isimlerinin kaç tanesi 'R' veya r karakteri ile biter?

SELECT DISTINCT replacement_cost FROM film
ORDER BY replacement_cost;

SELECT COUNT(DISTINCT replacement_cost) FROM film;

SELECT COUNT(*) AS FROM film
WHERE title LIKE 'T%' AND rating = 'G';

SELECT COUNT(*) AS count_char_countries FROM country
WHERE LENGTH(country) = 5;

SELECT COUNT(*) AS count_ends_with_r FROM city
WHERE city ILIKE '%r';


