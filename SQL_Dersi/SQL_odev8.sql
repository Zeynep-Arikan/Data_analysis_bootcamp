--test veritabanınızda employee isimli sütun bilgileri id(INTEGER), name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.
--Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.
--Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.
--Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.


CREATE TABLE employee (
  id integer,
  name VARCHAR(50) NOT NULL,
  birthday DATE,
  email VARCHAR(100)
);

-- 1. ID'ye göre ismi güncelle
UPDATE employee SET name = 'John Doe' WHERE id = 10;

-- 2. Name'e göre email güncelle
UPDATE employee SET email = 'updated_email@example.com' WHERE name = 'Gaspar Birkbeck';

-- 3. ID' ye göre email güncelle
UPDATE employee SET email = 'test@gmail.com' WHERE id = '8';

-- 4. Email'e göre doğum tarihini güncelle
UPDATE employee SET birthday = '8/27/2024' WHERE email = 'gwarrg@booking.com';

-- 5. ID’ye göre doğum tarihi
UPDATE employee SET birthday = 'test2@test.com' WHERE id = 25;

-- 1. ID’ye göre satır sil
DELETE FROM employee
WHERE id = 50;

-- 2. İsim (name) sütununa göre sil
DELETE FROM employee
WHERE name = 'Nani Wooff';

-- 3. Email’e göre sil
DELETE FROM employee
WHERE email = 'dkuller15@oaic.gov.au';

-- 4. Doğum tarihi belirli bir tarihe eşitse sil
DELETE FROM employee
WHERE birthday = '1/21/2025';

-- 5. Belirli ID'ye sahip kişiyi sil
DELETE FROM employee
WHERE id = 1;

