DROP DATABASE IF EXISTS testing_system_assignment_1;
CREATE DATABASE Testing_System_Assignment_1;
USE Testing_System_Assignment_1;


CREATE TABLE Department (
department_id		INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
department_name		VARCHAR(100)
);

CREATE TABLE `Position` (
position_id			INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
position_name		ENUM('Dev','Test','Scrum Master','PM')
);

CREATE TABLE  `Account` (
account_id			INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
email				VARCHAR(50) UNIQUE KEY,
username			VARCHAR(20) UNIQUE KEY,
fullname			VARCHAR(50),
department_id		INT UNSIGNED,
position_id			INT UNSIGNED,
create_date			DATE,
FOREIGN KEY(department_id) REFERENCES Department(department_id),
FOREIGN KEY(position_id) REFERENCES `Position`(position_id)
);

CREATE TABLE `Group` (
group_id			INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
group_name			VARCHAR(100),
creator_id			INT UNSIGNED,
create_date			DATE,
FOREIGN KEY(creator_id) REFERENCES `Account`(account_id)
);

CREATE TABLE GroupAccount (
group_id			INT UNSIGNED,
account_id			INT UNSIGNED,
join_date			DATE,
PRIMARY KEY(group_id,account_id),
FOREIGN KEY(group_id) REFERENCES `Group`(group_id),
FOREIGN KEY(account_id) REFERENCES `Account`(account_id)
);

CREATE TABLE TypeQuestion (
type_id				INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
type_name			ENUM('Essay','Multiple-Choice')
);

CREATE TABLE CategoryQuestion (
category_id			INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
category_name		VARCHAR(50)
);

CREATE TABLE Question (
question_id			INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
content				VARCHAR(1000),
category_id			INT UNSIGNED,
type_id				INT UNSIGNED,
creator_id			INT UNSIGNED,
create_date			DATE,
FOREIGN KEY(category_id) REFERENCES CategoryQuestion(category_id),
FOREIGN KEY(type_id) REFERENCES TypeQuestion(type_id),
FOREIGN KEY(creator_id) REFERENCES `Account`(account_id)
);

CREATE TABLE Answer (
answer_id			INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
content				VARCHAR(1000),
question_id			INT UNSIGNED,
is_correct			BOOLEAN,
FOREIGN KEY(question_id) REFERENCES Question(question_id)
);

CREATE TABLE Exam (
exam_id				INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
`code`				VARCHAR(10),
title				VARCHAR(50),
category_id			INT UNSIGNED,
duration			TIME,
creator_id			INT UNSIGNED,
create_date			DATE,
FOREIGN KEY(category_id) REFERENCES CategoryQuestion(category_id),
FOREIGN KEY(creator_id) REFERENCES `Account`(account_id)
);

CREATE TABLE ExamQuestion (
exam_id				INT UNSIGNED,
question_id			INT UNSIGNED,
PRIMARY KEY(exam_id,question_id),
FOREIGN KEY(exam_id) REFERENCES Exam(exam_id),
FOREIGN KEY(question_id) REFERENCES Question(question_id)
);

