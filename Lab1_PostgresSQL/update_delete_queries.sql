-- Оновлення ціни курсу
UPDATE courses 
SET price = 2199.99 
WHERE title = 'Основи Python';

-- Видалення студента
DELETE FROM student_courses 
WHERE email = 'melnik@email.com'; 