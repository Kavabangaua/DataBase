-- Отримання списку всіх курсів з іменами викладачів
SELECT c.title, t.first_name, t.last_name, c.price
FROM courses c
JOIN teachers t ON c.teacher_id = t.teacher_id;

-- Підрахунок кількості студентів на кожному курсі
SELECT c.title, COUNT(sc.student_id) as students_count
FROM courses c
LEFT JOIN student_courses sc ON c.course_id = sc.course_id
GROUP BY c.title;

-- Отримання інформації про студентів та їх курси
SELECT sc.first_name, sc.last_name, c.title, t.first_name as teacher_name
FROM student_courses sc
JOIN courses c ON sc.course_id = c.course_id
JOIN teachers t ON c.teacher_id = t.teacher_id; 