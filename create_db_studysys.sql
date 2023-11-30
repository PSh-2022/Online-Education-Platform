CREATE TABLE IF NOT EXISTS User (
  userId INTEGER NOT NULL UNIQUE PRIMARY KEY AUTOINCREMENT,
  userName TEXT NOT NULL,
  userEmail TEXT NOT NULL UNIQUE,
  userPassword TEXT NOT NULL,
  userIsAdmin BOOLEAN NOT NULL,
  userIsTeacher BOOLEAN NOT NULL
);

CREATE TABLE IF NOT EXISTS Teacher(
    teacherId INTEGER NOT NULL UNIQUE PRIMARY KEY AUTOINCREMENT
);

CREATE TABLE IF NOT EXISTS Student(
    studentId INTEGER NOT NULL UNIQUE PRIMARY KEY AUTOINCREMENT
);

CREATE TABLE IF NOT EXISTS Contract(
    contractId INTEGER NOT NULL UNIQUE PRIMARY KEY AUTOINCREMENT,
    numContract INTEGER NOT NULL,
    datesOfStudy date NOT NULL,
    listOfCourses TEXT NOT NULL
);
CREATE TABLE IF NOT EXISTS Course (
    courseId INTEGER NOT NULL UNIQUE PRIMARY KEY AUTOINCREMENT,
    courseName TEXT NOT NULL,
    courseDatesOfStudy date NOT NULL
);
CREATE TABLE IF NOT EXISTS Lesson (
    lessonId INTEGER NOT NULL UNIQUE PRIMARY KEY AUTOINCREMENT,
    lessonName TEXT NOT NULL,
    lessonDatesOfStudy date NOT NULL,
    lessonContent TEXT NOT NULL
);
CREATE TABLE IF NOT EXISTS Task (
    taskId INTEGER NOT NULL UNIQUE PRIMARY KEY AUTOINCREMENT,
    taskDatesOfStudy date NOT NULL,
    taskContent TEXT NOT NULL
);
CREATE TABLE IF NOT EXISTS Solution (
    solutionId INTEGER NOT NULL UNIQUE PRIMARY KEY AUTOINCREMENT,
    solutionProvided date NOT NULL,
    solutionChecked date NOT NULL,
    solutionContent TEXT NOT NULL,
    solutionMark INTEGER NOT NULL
);
