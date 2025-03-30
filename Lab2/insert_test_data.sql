-- Додавання клієнтів
INSERT INTO Client (first_name, last_name, phone, email) VALUES
('Петро', 'Барбос', '+380501234567', 'petya@barbos.com'),
('Борис', 'Ігат', '+380631112233', 'boris@igat.com'),
('Максим', 'Чупеп', '+380972223344', 'chupep@gmail.com');

-- Додавання номерів
INSERT INTO Room (room_number, type, price, status) VALUES
('101', 'Економ', 800.00, 'Вільний'),
('102', 'Стандарт', 1200.00, 'Заброньований'),
('201', 'Люкс', 2500.00, 'Вільний'),
('202', 'Стандарт', 1200.00, 'Обслуговується');

-- Додавання бронювань
INSERT INTO Booking (client_id, room_id, check_in_date, check_out_date, total_amount) VALUES
(1, 102, '2025-04-01', '2025-04-05', 4800.00),
(2, 201, '2025-04-10', '2025-04-13', 7500.00);

-- Додавання оплат
INSERT INTO Payment (booking_id, payment_date, amount, payment_method) VALUES
(1, '2025-03-29', 4800.00, 'Картка'),
(2, '2025-03-30', 3000.00, 'Готівка'),
(2, '2025-04-01', 4500.00, 'Онлайн');

-- Додавання персоналу
INSERT INTO Staff (first_name, last_name, position, phone, email) VALUES
('Наталія', 'Камиш', 'Адміністратор', '+380671234567', 'nata@hotel.com'),
('Василь', 'Василь', 'Менеджер з бронювання', '+380681112233', 'vasyl@hotel.com');

-- Додавання користувачів системи
INSERT INTO SystemUser (staff_id, username, password, role) VALUES
(1, 'admin_nataliia', 'secure_pass1', 'admin'),
(2, 'mod_vasyl', 'secure_pass2', 'moderator');