CREATE DATABASE IF NOT EXISTS COLLAGE;
USE COLLAGE;

CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY ,
    DepartmentName VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE Student (
    StudentID INT PRIMARY KEY AUTO_INCREMENT,
    Full_name VARCHAR(100),
    Email VARCHAR(100),
    Phone_Number VARCHAR(15),
    DOB DATE,
    Gender ENUM('Male', 'Female', 'Other'),
    Address VARCHAR(100),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID)References Department(DepartmentID)
);


CREATE TABLE Teachers (
    TeacherID INT PRIMARY KEY,
    Full_name VARCHAR(100),
    Email VARCHAR(100),
    phone_number VARCHAR(15),
    Age INT,
	Gender ENUM('Male', 'Female', 'Other'),
    Address VARCHAR(100),
    Designation VARCHAR(50),
	Qualification VARCHAR(100),
    DepartmentID INT,
    FOREIGN KEY (DepartmentId) REFERENCES Department(DepartmentId)
);

CREATE TABLE Course (
    CourseID INT PRIMARY KEY,
    Course_code VARCHAR(50),
    CourseName VARCHAR(100),
    CreditHours INT,
    DepartmentID INT,
    TeacherID INT,
	FOREIGN KEY (DepartmentId) REFERENCES Department(DepartmentId),
	FOREIGN KEY (TeacherId) REFERENCES Teachers(TeacherId)
    
);

CREATE TABLE Semester (
    SemesterID INT PRIMARY KEY AUTO_INCREMENT,
    SemesterName VARCHAR(50) UNIQUE NOT NULL,  
    StartDate DATE,
    EndDate DATE
);



CREATE TABLE Enrollment (
    EnrollmentID INT PRIMARY KEY AUTO_INCREMENT,
    Enrollment_date DATE,
	Status ENUM('Active', 'Completed', 'Dropped', 'Failed'),
    SemesterID INT,
    StudentID INT,
    CourseID INT,
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID),
	FOREIGN KEY (SemesterID) REFERENCES Semester(SemesterID)
);


CREATE TABLE Attendance (
    AttendanceID INT PRIMARY KEY ,
    StudentID INT,
    CourseID INT,
    Date DATE,
    Status ENUM('Present', 'Absent'),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
    
);


CREATE TABLE Marks (
    MarkID INT PRIMARY KEY ,
    StudentID INT,
    CourseID INT,
    ExamType ENUM('Mid', 'Final'),
    MarksObtained DECIMAL(5,2),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
    
);
