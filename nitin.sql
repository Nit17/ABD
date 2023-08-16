create Table Student (
regNumber INT PRIMARY KEY,
Name Varchar(100),
email Varchar(150),
phone varchar(20)
);
create Table Instructor (
EmpID INT PRIMARY KEY,
Name Varchar(100),
email Varchar(150),
Designation varchar(100),
phone Varchar(20)
);
create Table Course (
CouseID Int PRIMARY KEY,
Name Varchar (100),
contactHours int,
InstructorID int,
Foreign Key (InstructorID) refrences Instructor(EmpID)
);
Create table Take(
StudentID int,
courseID int,
Grade Varchar(2),
Primary KEY (StudentID, CourseID),
Foreign KEY (StudentID) REFERENCES student(RegNumber),
Foreign KEY (courseID) References Course(CourseID)
);

Insert into Student (RegNumber, Name,email,phone) VALUES
(1,'Suresha','sur@gmail.com','12345');

Insert into Instructor (EmpID, Name,email,Designation,phone)VALUES
(2,'Ramesha','ram@gmail.com','Warden','9876543210');

Insert Into Course(CourseID,Name , ContactHours, InstructorID)VALUES
(3,'math',10,40);

Insert into take (studentID, CourseID ,Grade)VALUES
(1,3,'D');
sois@sois-VirtualBox:~$ jps
3106 SecondaryNameNode
3412 ResourceManager
3573 NodeManager
2730 NameNode
2892 DataNode
25100 Jps
sois@sois-VirtualBox:~$ hdfs dfs -mkdir /user/test_dir
mkdir: `/user/test_dir': File exists


