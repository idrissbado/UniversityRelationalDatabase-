# 🎓 University Relational Database Checkpoint

![University Icon](https://img.icons8.com/fluency/48/000000/university.png)

**Author:** Idriss Bado

---

## 🎯 What You're Aiming For
This checkpoint evaluates your ability to design a normalized relational database to solve common data storage problems and execute queries using SQL. You’ll simulate a university information system that stores student, instructor, course, and enrollment data.

---

## 1️⃣ Schema Design (3NF, Keys & Constraints)

### Students
- `student_id` INT PRIMARY KEY
- `name` VARCHAR(100) NOT NULL
- `email` VARCHAR(100) NOT NULL UNIQUE
- `age` INT NOT NULL CHECK (age > 17)

### Courses
- `course_id` INT PRIMARY KEY
- `title` VARCHAR(100) NOT NULL
- `credits` INT NOT NULL CHECK (credits > 0)

### Instructors
- `instructor_id` INT PRIMARY KEY
- `name` VARCHAR(100) NOT NULL
- `department` VARCHAR(100) NOT NULL

### Enrollments
- `student_id` INT REFERENCES Students(student_id)
- `course_id` INT REFERENCES Courses(course_id)
- `grade` CHAR(2)
- PRIMARY KEY (student_id, course_id)

---

## 2️⃣ SQL Table Creation
See `schema.sql` for full SQL code.

---

## 3️⃣ Sample Data
See `sample_data.sql` for insert statements.

---

## 4️⃣ Query Execution
See `queries.sql` for all required SQL queries.

---

> Professional, innovative, and ready for real-world university data management!
