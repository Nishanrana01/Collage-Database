-- List all students enrolled in the 'Software Engineering' department.
SELECT StudentID, Full_name 
FROM Student
WHERE DepartmentID = 103;

-- Find all male students from the 'Bhaktapur' address.
SELECT Full_name,Address
FROM Student
WHERE Gender = 'Male' AND Address = 'Bhaktapur';

-- List students along with their department names.
SELECT StudentID,Full_name,DepartmentName
From Student s
JOIN Department d ON s.DepartmentID = d.DepartmentID;

-- Show each student’s enrollment details including course name, semester, and enrollment status.
SELECT s.StudentID,s.Full_name,c.CourseName, sem.SemesterName,e.status
FROM Enrollment e
JOIN Student s ON e.StudentID = s.StudentID
JOIN Course C ON e.CourseID = c.CourseID
JOIN Semester sem ON e.SemesterID = sem.SemesterID;

-- Display all students who have marks in the 'Final' exam and scored above 80
SELECT s.StudentID,s.Full_name,m.CourseID,m.MarksObtained
FROM Marks m
JOIN Student s ON m.StudentID = s.StudentID
WHERE m.ExamType = 'Final'
AND m.MarksObtained>80;

-- Count how many students are in each department
SELECT count(s.StudentID) as Studentcount,d.DepartmentName
FROM Department D
JOIN Student s ON d.DepartmentID =s.DepartmentID
GROUP BY d.DepartmentName;

-- Calculate the total credit hours taught by each department.
SELECT d.DepartmentName,sum(c.CreditHours) AS TotalcreditHours
FROM Department d
JOIN Course c ON d.DepartmentID = c.DepartmentID
GROUP BY d.DepartmentName;

-- Find how many students are currently 'Active' in each semester.
SELECT sem.SemesterName,COUNT(e.StudentID) AS ActiveStudents
FROM Enrollment e
JOIN Semester sem ON e.SemesterID = sem.SemesterID
WHERE e.Status = 'Active'
GROUP BY sem.SemesterName;

-- Get the details of the student who scored the highest in the 'Mid' exam.
SELECT s.StudentID,s.Full_name,m.MarksObtained,c.CourseName
FROM Marks m
JOIN Student s ON m.StudentID  = s. StudentID
JOIN Course c ON m.CourseID = c.CourseID
WHERE  m.ExamType = 'Mid'
ORDER BY m.MarksObtained DESC
LIMIT 1;