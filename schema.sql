-- University Relational Database Schema (3NF, Constraints)
-- Author: Idriss Bado

CREATE TABLE Students (
  student_id INT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL UNIQUE,
  age INT NOT NULL CHECK (age > 17)
);

CREATE TABLE Instructors (
  instructor_id INT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  department VARCHAR(100) NOT NULL
);

CREATE TABLE Courses (
  course_id INT PRIMARY KEY,
  title VARCHAR(100) NOT NULL,
  credits INT NOT NULL CHECK (credits > 0),
  instructor_id INT NOT NULL,
  FOREIGN KEY (instructor_id) REFERENCES Instructors(instructor_id)
);

CREATE TABLE Enrollments (
  student_id INT NOT NULL,
  course_id INT NOT NULL,
  grade CHAR(2),
  PRIMARY KEY (student_id, course_id),
  FOREIGN KEY (student_id) REFERENCES Students(student_id),
  FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);
