-- Додавання викладачів
INSERT INTO teachers (first_name, last_name, email, specialization) VALUES
('Олександр', 'Махович', 'mahowich@gmail.com', 'Програмування'),
('Ольга', 'Лещенко', 'leshchenko@gmail.com', 'Веб-дизайн'),
('Віра', 'Миколайчук', 'mikolaychuk@gmail.com', 'Бази даних');

-- Додавання курсів
INSERT INTO courses (title, description, teacher_id, price, duration_weeks) VALUES
('Основи Python', 'Базовий курс програмування на Python', 1, 1999.99, 8),
('Веб-дизайн для початківців', 'Вивчення HTML, CSS та основ дизайну', 2, 1499.99, 6),
('SQL від А до Я', 'Повний курс по роботі з базами даних', 3, 2499.99, 10);

-- Додавання студентів
INSERT INTO student_courses (first_name, last_name, email, course_id) VALUES
('Міша', 'Карасьович', 'karasyovich@gmail.com', 1),
('Семен', 'Гомельский', 'skibidi@gmail.com', 2),
('Петро', 'Сурінам', 'surin@gmail.com', 3); 