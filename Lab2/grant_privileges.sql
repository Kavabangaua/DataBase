-- Надання прав модератору (читання, вставка, оновлення)
GRANT SELECT, INSERT, UPDATE ON Client, Room, Booking, Payment TO moderator_user;

-- Надання прав звичайному користувачу (тільки читання)
GRANT SELECT ON Client, Room, Booking, Payment TO regular_user;

-- обмежимо доступ до Staff і SystemUser лише для адміністратора
GRANT SELECT ON Staff TO moderator_user;
GRANT SELECT ON SystemUser TO moderator_user;

-- надати всі права адміну на всі таблиці
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO admin_user;