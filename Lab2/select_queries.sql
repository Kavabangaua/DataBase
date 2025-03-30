-- 1. Вибірка всіх клієнтів
SELECT * FROM Client;

-- 2. Вибірка бронювань, де сума більша за 5000 грн
SELECT * FROM Booking
WHERE total_amount > 5000;

-- 3. Сортування номерів за ціною спаданням
SELECT * FROM Room
ORDER BY price DESC;

-- 4. Підрахунок кількості бронювань на кожного клієнта
SELECT c.first_name, c.last_name, COUNT(b.booking_id) AS total_bookings
FROM Client c
JOIN Booking b ON c.client_id = b.client_id
GROUP BY c.client_id, c.first_name, c.last_name;

-- 5. Середня кількість бронювань на клієнта (через підзапит)
SELECT AVG(bookings_count) AS avg_bookings_per_client
FROM (
    SELECT COUNT(*) AS bookings_count
    FROM Booking
    GROUP BY client_id
) AS sub;

-- 6. Скільки оплат здійснено готівкою
SELECT COUNT(*) AS cash_payments
FROM Payment
WHERE payment_method = 'Готівка';

-- 7. Загальна сума всіх оплат
SELECT SUM(amount) AS total_revenue
FROM Payment;

-- 8. Унікальні значення статусів номерів
SELECT DISTINCT status FROM Room;

-- 9. Мінімальна та максимальна ціна номера
SELECT MIN(price) AS min_price, MAX(price) AS max_price
FROM Room;

-- 10. Кількість номерів кожного типу, де їх більше одного
SELECT type, COUNT(*) AS room_count
FROM Room
GROUP BY type
HAVING COUNT(*) > 1;

-- 11. Об’єднання: всі бронювання з іменами клієнтів і номерами
SELECT
    b.booking_id,
    c.first_name  ' '  c.last_name AS client_name,
    r.room_number,
    b.check_in_date,
    b.check_out_date
FROM Booking b
JOIN Client c ON b.client_id = c.client_id
JOIN Room r ON b.room_id = r.room_id
ORDER BY b.check_in_date;