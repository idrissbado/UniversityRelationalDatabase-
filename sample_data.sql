-- Sample Data for University Relational Database
-- Author: Idriss Bado

-- Students
INSERT INTO Students (student_id, name, email, age) VALUES
  (1, 'Alice Smith', 'alice.smith@email.com', 20),
  (2, 'Bob Johnson', 'bob.johnson@email.com', 22),
  (3, 'Charlie Lee', 'charlie.lee@email.com', 19);

-- Instructors
INSERT INTO Instructors (instructor_id, name, department) VALUES
  (1, 'Dr. Green', 'Computer Science'),
  (2, 'Prof. White', 'Mathematics'),
  (3, 'Dr. Black', 'Physics');

-- Courses
INSERT INTO Courses (course_id, title, credits, instructor_id) VALUES
  (1, 'Database Systems', 3, 1),
  (2, 'Calculus I', 4, 2),
  (3, 'Physics I', 4, 3);

-- Enrollments
INSERT INTO Enrollments (student_id, course_id, grade) VALUES
  (1, 1, 'A'),
  (2, 1, 'B'),
  (2, 2, 'A'),
  (3, 3, 'B');
