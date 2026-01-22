-- University Relational Database Queries
-- Author: Idriss Bado

-- 1. Retrieve all students enrolled in the course “Database Systems”
SELECT s.*
FROM Students s
JOIN Enrollments e ON s.student_id = e.student_id
JOIN Courses c ON e.course_id = c.course_id
WHERE c.title = 'Database Systems';

-- 2. List all courses along with the names of their instructors
SELECT c.title, i.name AS instructor_name
FROM Courses c
JOIN Instructors i ON c.instructor_id = i.instructor_id;

-- 3. Find students who are not enrolled in any course
SELECT s.*
FROM Students s
LEFT JOIN Enrollments e ON s.student_id = e.student_id
WHERE e.course_id IS NULL;

-- 4. Update the email address of a student
UPDATE Students
SET email = 'new.email@email.com'
WHERE student_id = 1;

-- 5. Delete a course by its ID
DELETE FROM Courses
WHERE course_id = 2;
