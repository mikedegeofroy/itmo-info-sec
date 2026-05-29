CREATE TABLE students (
    id          serial PRIMARY KEY,
    full_name   text   NOT NULL,
    isu         int    UNIQUE NOT NULL,
    group_code  text   NOT NULL
);

CREATE TABLE courses (
    id          serial PRIMARY KEY,
    title       text   NOT NULL,
    credits     int    NOT NULL CHECK (credits > 0)
);

CREATE TABLE grades (
    id          serial PRIMARY KEY,
    student_id  int    REFERENCES students(id) ON DELETE CASCADE,
    course_id   int    REFERENCES courses(id)  ON DELETE CASCADE,
    grade       int    NOT NULL CHECK (grade BETWEEN 0 AND 100)
);

INSERT INTO students (full_name, isu, group_code) VALUES
    ('Мишель де Джофрой', 345570, 'M3407'),
    ('Иван Иванов',       348726, 'M3408'),
    ('Анна Петрова',      348727, 'M3409');

INSERT INTO courses (title, credits) VALUES
    ('Информационная безопасность', 5),
    ('Базы данных',                  6),
    ('Машинное обучение',            4);

INSERT INTO grades (student_id, course_id, grade) VALUES
    (1, 1, 92),
    (1, 2, 87),
    (2, 1, 75),
    (3, 3, 99);
