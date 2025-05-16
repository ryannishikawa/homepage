-- 3 professors
INSERT INTO PROFESSOR (ssn, name, sex, title, salary, st_addr, city, state, zip, area_code, phone_num) 
VALUES  (111111111, 'John Smith', 'M', 'Professor', 80000, '123 Elm St', 'Anaheim', 'CA', '12345', 111, 111111),
        (222222222, 'Jane Doe', 'F', 'Professor', 70000, '456 Oak St', 'Los Angeles', 'CA', '67890', 222, 222222),
        (333333333, 'Jim Brown', 'M', 'Assistant Professor', 60000, '789 Pine St', 'San Francisco', 'CA', '54321', 333, 333333);

INSERT INTO College_Degree (pssn, degree, institution) 
VALUES  (111111111, 'Ph.D. Computer Science', 'UC Irvine'),
        (222222222, 'MS Physics', 'CSU Fullerton'),
        (333333333, 'Ph.D. Software Engineering', 'Stanford');


-- 2 departments
INSERT INTO Department (dept_num, name, phone_num, office_location, chair_ssn) 
VALUES  (1, 'Computer Science', '7145551000', 'CS-201', 111111111),
        (2, 'Math', '7145552000', 'MH-401', 222222222);


-- 4 courses
INSERT INTO COURSE (Cnum, title, textbook, units, dept_no) 
VALUES  (101, 'Intro to Programming', 'C++ Textbook', 3, 1),
        (102, 'Database Systems', 'Database Systems Textbook', 3, 1),
        (103, 'Physics 1', 'Physics Textbook', 4, 1),
        (104, 'Calculus 1', 'Calculus Textbook', 4, 1);

INSERT INTO PREREQUISITE (Cno, prereq) 
VALUES  (102, 101),
        (103, 104);

-- 6 sections
INSERT INTO Section (Cno, sec_num, room, seats, days, start_time, end_time, pssn) 
VALUES  (101, 1, 'CS101', 30, 'MWF', '09:00:00', '09:50:00', 111111111),
        (101, 2, 'CS102', 25, 'TTh', '10:00:00', '11:15:00', 333333333),
        (102, 1, 'CS201', 20, 'MWF', '11:00:00', '11:50:00', 333333333),
        (103, 1, 'IS101', 30, 'TTh', '09:00:00', '10:15:00', 222222222),
        (104, 1, 'IS102', 20, 'MWF', '13:00:00', '13:50:00', 222222222),
        (104, 2, 'IS103', 25, 'TTh', '14:00:00', '15:15:00', 222222222);

-- 8 students
INSERT INTO Student (CWID, Fname, Lname, addr, phone_num, major) 
VALUES  (100000001, 'Shohei', 'Ohtani', '123 Elm St', 4444444444, 1),
        (100000002, 'Mamiko', 'Tanaka', '234 Oak St', 5555555555, 1),
        (100000003, 'Roki', 'Sasaki', '345 Pine St', 6666666666, 2),
        (100000004, 'Miyabi', 'Hoshimi', '456 Cedar St', 7777777777, 1),
        (100000005, 'Jennifer', 'Huh', '567 Maple St', 8888888888, 2),
        (100000006, 'Kike', 'Hernandez', '678 Birch St', 9999999999, 1),
        (100000007, 'Mina', 'Myoui', '789 Spruce St', 1000000000, 2),
        (100000008, 'Mookie', 'Betts', '890 Willow St', 2000000000, 1);

INSERT INTO Minor (s_CWID, dept_no)
VALUES  (100000001, 2),
        (100000002, 2);

-- 20 enrollment records 
INSERT INTO Enrollment (s_CWID, Cnum, sec_num, grade)
VALUES  (100000001, 101, 1, 'A'),
        (100000002, 101, 1, 'B'),
        (100000003, 104, 1, 'C'),
        (100000004, 101, 1, 'B'),
        (100000005, 102, 1, 'A'),
        (100000006, 103, 1, 'B'),
        (100000007, 104, 2, 'A'),
        (100000008, 102, 1, 'C'),
        (100000001, 103, 1, 'B'),
        (100000002, 102, 1, 'A'),
        (100000003, 101, 1, 'A'),
        (100000004, 104, 1, 'B'),
        (100000005, 101, 2, 'C'),
        (100000006, 104, 2, 'A'),
        (100000007, 102, 1, 'B'),
        (100000008, 101, 1, 'A'),
        (100000001, 102, 1, 'B'),
        (100000002, 104, 1, 'A'),
        (100000003, 102, 1, 'C'),
        (100000004, 103, 1, 'B');