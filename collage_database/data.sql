INSERT INTO Department (DepartmentID,DepartmentName) VALUES
(101,'Information Technology'),
(102,'Electrical Engineering'),
(103,'Software Engineering');



INSERT INTO Student ( Full_name , Email, Phone_Number, DOB,Gender,Address, DepartmentID) VALUES
('Sanjay Shrestha', 'sanjay@example.com', '9845001234', '2003-04-15','Male','Baneshwor',101),
('Pratiksha Rai', 'pratiksha@example.com', '9845005678', '2002-11-25','Female','Sundhara', 102),
('Nikita KC', 'nikita@example.com', '9801234567', '2003-02-05','Female','Tokha', 103),
('Rohit Bhattarai', 'rohit@example.com', '9801237890', '2002-07-10','Male','Koteshwor',102),
('Aayush Khadka', 'aayush@example.com', '9840001234', '2003-06-21','Male','lalitpur', 102),
('Manisha Adhikari', 'manisha@example.com', '9841112345', '2002-09-18','Female','Kirtipur', 101),
('Kritika Basnet', 'kritika@example.com', '9804567890', '2003-01-01','Female','Balaju', 103),
('Ramesh Tamang', 'ramesh@example.com', '9812345678', '2002-05-12','Male','Bhaktapur', 101),
('Sabina Lama', 'sabina@example.com', '9803214567', '2003-03-25','Female','Kapan', 101),
('Bikash Maharjan', 'bikash@example.com', '9845321678', '2002-12-30','Male','Jorpati', 101);

SELECT * FROM Student;

ALTER TABLE Student
AUTO_INCREMENT = 200;
SELECT * FROM Student;


INSERT INTO Teachers (TeacherID, Full_name, Email, phone_number, Age, Gender, Address, Designation, Qualification, DepartmentID)
VALUES
(111, 'Dr. Binod Poudel', 'binod.poudel@college.edu.np', '9841001122', 45, 'Male', 'Kathmandu', 'Professor', 'PhD in Computer Science', 101),
(112, 'Ms. Gita Thapa', 'gita.thapa@college.edu.np', '9841102233', 34, 'Female', 'Pokhara', 'Lecturer', 'MSc in Information Technology', 101),
(113, 'Dr. Shreeharsha Sharma', 'shree.sharma@college.edu.np', '9856003344', 50, 'Male', 'Lalitpur', 'Associate Professor', 'PhD in Electrical Engineering', 102),
(114, 'Ms. Laxmi Rana', 'laxmi.rana@college.edu.np', '9845676677', 30, 'Female', 'Dharan', 'Lecturer', 'MSc in Software Engineering', 103),
(115, 'Mr. Bibek Karki', 'bibek.karki@college.edu.np', '9809987788', 36, 'Male', 'Butwal', 'Assistant Professor', 'MSc in Electronics', 102),
(116, 'Dr. Milan Gurung', 'milan.gurung@college.edu.np', '9848899001', 48, 'Male', 'Chitwan', 'Professor', 'PhD in Software Engineering', 103),
(117, 'Ms. Sushmita Shrestha', 'sushmita.shrestha@college.edu.np', '9856123400', 33, 'Female', 'Hetauda', 'Lecturer', 'MSc in Data Science', 101),
(118, 'Dr. Nirajan KC', 'nirajan.kc@college.edu.np', '9846001122', 46, 'Male', 'Itahari', 'Professor', 'PhD in Artificial Intelligence', 101);



INSERT INTO Course (CourseID, Course_code, CourseName, CreditHours, DepartmentID, TeacherID)
VALUES
(123, 'CS101', 'Introduction to Programming', 3, 103, 111),
(124, 'IT202', 'Network Security', 3, 101, 112),
(125, 'EE305', 'Electromagnetic Theory', 4, 102, 113),
(126, 'ME210', 'Thermodynamics', 3, 102, 114),
(127, 'CE310', 'Structural Analysis', 3, 103, 115),
(128, 'AR105', 'Architectural Design I', 3, 103, 116),
(129, 'EC220', 'Digital Signal Processing', 3, 102, 117),
(130, 'SE301', 'Software Testing', 3, 103, 117),
(131, 'DS401', 'Machine Learning', 3, 101, 118),
(132, 'AI410', 'Neural Networks and Deep Learning', 3, 101, 118);

SELECT * FROM Course;

INSERT INTO Semester (SemesterName, StartDate, EndDate) VALUES 
('Spring 2021', '2021-01-10', '2021-05-15'),
('Summer 2021', '2021-06-01', '2021-08-15'),
('Fall 2021', '2021-09-01', '2021-12-20'),
('Spring 2022', '2022-01-12', '2022-05-18'),
('Summer 2022', '2022-06-05', '2022-08-20'),
('Fall 2022', '2022-09-02', '2022-12-21'),
('Spring 2023', '2023-01-11', '2023-05-16'),
('Summer 2023', '2023-06-03', '2023-08-19'),
('Fall 2023', '2023-09-04', '2023-12-22'),
('Spring 2024', '2024-01-13', '2024-05-17');

SELECT * FROM Semester;

INSERT INTO Enrollment (Enrollment_date, Status, SemesterID, CourseID,StudentID) VALUES
('2021-01-15', 'Active', 1, 123, 201),
('2021-01-16', 'Completed', 1, 124, 202),
('2021-01-17', 'Dropped', 1, 125, 203),
('2021-06-05', 'Completed', 2, 126, 204),
('2021-06-07', 'Active', 2, 127, 205),
('2021-09-01', 'Failed', 3, 128, 202),
('2021-09-03', 'Completed', 3, 128, 203),
('2021-09-05', 'Active', 3, 129, 201),
('2021-09-10', 'Dropped', 3, 130, 204),
('2021-09-12', 'Active', 3, 131, 205);


INSERT INTO Attendance (AttendanceID, CourseID,StudentID ,Date, Status) VALUES
(11,123, 201, '2023-09-04', 'Present'),
(12,124, 202, '2023-09-04', 'Absent'),
(13,125, 203, '2023-09-04', 'Present'),
(14,126, 204, '2023-09-04', 'Present'),
(15,127, 205, '2023-09-04', 'Absent'),
(16,128, 206, '2023-09-05', 'Present'),
(17,129, 207, '2023-09-05', 'Present'),
(18,130, 208, '2023-09-05', 'Absent'),
(19,131, 209, '2023-09-05', 'Present'),
(20,132, 200, '2023-09-05', 'Present');



INSERT INTO Marks (MarkID, StudentID, CourseID, ExamType, MarksObtained) VALUES
(1111, 200, 123, 'Mid', 88.25),
(2222, 201, 124, 'Final', 91.00),
(3333, 202, 125, 'Mid', 69.50),
(4444, 203, 126, 'Final', 73.75),
(5555, 204, 127, 'Mid', 59.00),
(6666, 205, 128, 'Final', 62.50),
(7777, 206, 129, 'Mid', 77.25),
(8888, 207, 130, 'Final', 80.00),
(9999, 208, 131, 'Mid', 85.00),
(1000, 209, 132, 'Final', 89.50);