-- University Relational Database: All Relevant Answers & Explanations
-- Author: Idriss Bado

/*
Step 1 - Schema Design (3NF, Keys & Constraints)
- Students: student_id (PK), name (NOT NULL), email (NOT NULL, UNIQUE), age (NOT NULL, CHECK > 17)
- Courses: course_id (PK), title (NOT NULL), credits (NOT NULL, CHECK > 0), instructor_id (FK)
- Instructors: instructor_id (PK), name (NOT NULL), department (NOT NULL)
- Enrollments: student_id (FK), course_id (FK), grade, PK (student_id, course_id)

Normalization:
- All tables are in 3NF: no transitive or partial dependencies, all non-key attributes depend only on the key.
- Foreign keys enforce referential integrity.
- Constraints (NOT NULL, UNIQUE, CHECK) ensure data quality.
*/

/*
Step 2 - SQL Table Creation
See schema.sql for full SQL code. All constraints and keys are enforced in the CREATE TABLE statements.
*/

/*
Step 3 - Insert Sample Data
See sample_data.sql for insert statements. 3 students, 3 instructors, 3 courses, 4 enrollments.
*/

/*
Step 4 - Query Execution
1. Retrieve all students enrolled in the course “Database Systems”
2. List all courses along with the names of their instructors
3. Find students who are not enrolled in any course
4. Update the email address of a student
5. Delete a course by its ID
See queries.sql for the exact SQL code for each query.
*/

-- Example: Retrieve all students enrolled in “Database Systems”
-- SELECT s.* FROM Students s JOIN Enrollments e ON s.student_id = e.student_id JOIN Courses c ON e.course_id = c.course_id WHERE c.title = 'Database Systems';

-- Example: List all courses with instructor names
-- SELECT c.title, i.name AS instructor_name FROM Courses c JOIN Instructors i ON c.instructor_id = i.instructor_id;

-- Example: Find students not enrolled in any course
-- SELECT s.* FROM Students s LEFT JOIN Enrollments e ON s.student_id = e.student_id WHERE e.course_id IS NULL;

-- Example: Update a student's email
-- UPDATE Students SET email = 'new.email@email.com' WHERE student_id = 1;

-- Example: Delete a course by ID
-- DELETE FROM Courses WHERE course_id = 2;
