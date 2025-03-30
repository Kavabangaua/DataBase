-- Створення бази даних
CREATE DATABASE hotel_db;

-- Підключення до бази
\c hotel_db;

-- Створення ролей-користувачів
-- Адміністратор: має повний доступ
CREATE ROLE admin_user WITH LOGIN PASSWORD 'admin_pass';
GRANT ALL PRIVILEGES ON DATABASE hotel_db TO admin_user;

-- Модератор: доступ до читання/вставки/оновлення, без видалення
CREATE ROLE moderator_user WITH LOGIN PASSWORD 'moderator_pass';

-- Звичайний користувач: доступ лише на читання
CREATE ROLE regular_user WITH LOGIN PASSWORD 'user_pass';