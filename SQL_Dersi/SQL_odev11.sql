--UNION operatörü sayesinde farklı SELECT sorgularıyla oluşan sonuçları tek bir sonuç kümesi haline getiririz.
--UNION operatörü bize birleşik veriler içerisindeki tekrar edenleri göstermez. Tekrar edenleri görmek için UNION ALL kullanırız.

--SELECT <sütun_adı>, <sütun_adı>... FROM <table1>
--UNION
--SELECT <sütun_adı>, <sütun_adı>...
--FROM <table2>

--INTERSECT operatörü sayesinde farklı SELECT sorgularıyla oluşan sonuçların kesişen verilerini tek bir sonuç kümesi haline getiririz.
--INTERSECT operatörü bize kesişen veriler içerisindeki tekrar edenleri göstermez. Tekrar edenleri görmek için INTERSECT ALL kullanırız.

--SELECT <sütun_adı>, <sütun_adı>... FROM <table1>
--INTERSECT
--SELECT <sütun_adı>, <sütun_adı>...
--FROM <table2>

--EXCEPT operatörü bize ilk sorguda olan ancak ikinci sorguda olmayan veriler içerisindeki tekrar edenleri göstermez. 
--Tekrar edenleri görmek için EXCEPT ALL kullanırız.

--SELECT <sütun_adı>, <sütun_adı>... FROM <table1>
--EXCEPT
--SELECT <sütun_adı>, <sütun_adı>...
--FROM <table2>

--actor ve customer tablolarında bulunan first_name sütunları için tüm verileri sıralayalım.
(
SELECT first_name 
FROM actor
)
UNION
(
SELECT first_name 
FROM customer
);
--actor ve customer tablolarında bulunan first_name sütunları için kesişen verileri sıralayalım.

SELECT first_name FROM actor
INTERSECT
SELECT first_name FROM customer

--actor ve customer tablolarında bulunan first_name sütunları için ilk tabloda bulunan ancak ikinci tabloda bulunmayan verileri sıralayalım.
SELECT first_name FROM actor 
EXCEPT
SELECT first_name customer

--İlk 3 sorguyu tekrar eden veriler için de yapalım.
(
SELECT first_name 
FROM actor
)
UNION ALL
(
SELECT first_name 
FROM customer
);

SELECT first_name FROM actor
INTERSECT ALL
SELECT first_name FROM customer

SELECT first_name FROM actor 
EXCEPT ALL
SELECT first_name customer





