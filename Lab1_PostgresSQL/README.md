# Онлайн-платформа курсів

## Опис проекту
База даних для управління онлайн-платформою курсів. Система дозволяє зберігати інформацію про викладачів, курси та студентів.

## Структура бази даних

### Таблиці:
1. **teachers** - інформація про викладачів
   - teacher_id (PK)
   - first_name
   - last_name
   - email
   - specialization

2. **courses** - інформація про курси
   - course_id (PK)
   - title
   - description
   - teacher_id (FK)
   - price
   - duration_weeks

3. **student_courses** - інформація про студентів та їх курси
   - student_id (PK)
   - first_name
   - last_name
   - email
   - course_id (FK)
   - enrollment_date

## Зв'язки між таблицями
- courses.teacher_id -> teachers.teacher_id
- student_courses.course_id -> courses.course_id 