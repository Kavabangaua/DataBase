-- Таблиця клієнтів
CREATE TABLE Client (
    client_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    phone VARCHAR(20),
    email VARCHAR(100)
);

-- Таблиця номерів
CREATE TABLE Room (
    room_id SERIAL PRIMARY KEY,
    room_number VARCHAR(10) UNIQUE NOT NULL,
    type VARCHAR(20), -- Економ, Стандарт, Люкс
    price NUMERIC(10,2),
    status VARCHAR(20) -- Вільний, Заброньований, Обслуговується
);

-- Таблиця бронювань
CREATE TABLE Booking (
    booking_id SERIAL PRIMARY KEY,
    client_id INT REFERENCES Client(client_id),
    room_id INT REFERENCES Room(room_id),
    check_in_date DATE,
    check_out_date DATE,
    total_amount NUMERIC(10,2)
);

-- Таблиця оплат
CREATE TABLE Payment (
    payment_id SERIAL PRIMARY KEY,
    booking_id INT REFERENCES Booking(booking_id),
    payment_date DATE,
    amount NUMERIC(10,2),
    payment_method VARCHAR(50) -- Картка, Готівка, Онлайн
);

-- Таблиця персоналу
CREATE TABLE Staff (
    staff_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    position VARCHAR(50),
    phone VARCHAR(20),
    email VARCHAR(100)
);

-- Таблиця користувачів системи
CREATE TABLE SystemUser (
    user_id SERIAL PRIMARY KEY,
    staff_id INT REFERENCES Staff(staff_id),
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(100) NOT NULL,
    role VARCHAR(20) -- admin, moderator, user
);