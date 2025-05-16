DROP TABLE IF EXISTS Enrollment;
DROP TABLE IF EXISTS Minor;
DROP TABLE IF EXISTS Student;
DROP TABLE IF EXISTS Section;
DROP TABLE IF EXISTS Prerequisite;
DROP TABLE IF EXISTS Course;
DROP TABLE IF EXISTS Department;
DROP TABLE IF EXISTS College_Degree;
DROP TABLE IF EXISTS Professor;


CREATE TABLE Professor (
    ssn NUMERIC(9) PRIMARY KEY,
    name VARCHAR(64) NOT NULL,
    sex ENUM('M', 'F'),
    title VARCHAR(32),
    salary DECIMAL(10, 2),
    st_addr VARCHAR(20),
    city VARCHAR(20),
    state CHAR(2),
    zip VARCHAR(5),
    area_code NUMERIC(3),
    phone_num NUMERIC(7)
);

CREATE TABLE College_Degree (
    pssn NUMERIC(9),
    degree VARCHAR(32),
    institution VARCHAR(64),
    FOREIGN KEY (pssn) REFERENCES Professor(ssn),
    PRIMARY KEY (pssn, degree)
);

CREATE TABLE Department (
    dept_num INT PRIMARY KEY,
    name VARCHAR(64) NOT NULL,
    phone_num NUMERIC(10),
    office_location VARCHAR(100),
    chair_ssn NUMERIC(9),
    FOREIGN KEY (chair_ssn) REFERENCES Professor(ssn)
);

CREATE TABLE Course (
    Cnum NUMERIC(7) PRIMARY KEY,
    title VARCHAR(64) NOT NULL,
    textbook VARCHAR(64),
    units TINYINT,
    dept_no INT,
    FOREIGN KEY (dept_no) REFERENCES Department(dept_num)
);

CREATE TABLE Prerequisite (
    Cno NUMERIC(7),
    prereq NUMERIC(7),
    FOREIGN KEY (Cno) REFERENCES Course(Cnum),
    FOREIGN KEY (prereq) REFERENCES Course(Cnum),
    PRIMARY KEY (Cno, prereq)
);

CREATE TABLE Section (
    Cno NUMERIC(7),
    sec_num TINYINT,
    room VARCHAR(20),
    seats INT,
    days VARCHAR(20),
    start_time TIME,
    end_time TIME,
    pssn NUMERIC(9),
    FOREIGN KEY (pssn) REFERENCES Professor(ssn),
    FOREIGN KEY (Cno) REFERENCES Course(Cnum),
    PRIMARY KEY (Cno, sec_num)
);

CREATE TABLE Student (
    CWID NUMERIC(9) PRIMARY KEY,
    Fname VARCHAR (20) NOT NULL,
    Lname VARCHAR (20) NOT NULL,
    addr VARCHAR(100),
    phone_num NUMERIC(10),
    major INT,
    FOREIGN KEY (major) REFERENCES Department(dept_num)
);

CREATE TABLE Minor (
    s_CWID NUMERIC(9),
    dept_no INT,
    FOREIGN KEY (s_CWID) REFERENCES Student(CWID),
    FOREIGN KEY (dept_no) REFERENCES Department(dept_num),
    PRIMARY KEY (s_CWID, dept_no)
);

CREATE TABLE Enrollment (
    s_CWID NUMERIC(9),
    Cnum NUMERIC(7),
    sec_num TINYINT,
    grade ENUM('A', 'B', 'C', 'D', 'F'),
    FOREIGN KEY (s_CWID) REFERENCES Student(CWID),
    FOREIGN KEY (Cnum, sec_num) REFERENCES Section(Cno, sec_num),
    PRIMARY KEY (s_CWID, Cnum, sec_num)
);