DROP DATABASE IF EXISTS testing_system_assignment_1;
CREATE DATABASE Testing_System_Assignment_1;
USE Testing_System_Assignment_1;


CREATE TABLE Department (
department_id		INT,
department_name		VARCHAR(48)
);

CREATE TABLE Position (
position_id			INT,
position_name		VARCHAR(48)
);

CREATE TABLE  `Account` (
account_id			INT,
email				VARCHAR(24),
username			VARCHAR(12),
fullname			VARCHAR(24),
department_id		INT,
position_id			INT,
create_date			DATE
);

CREATE TABLE `Group` (
group_id			INT,
group_name			VARCHAR(48),
creator_id			INT,
create_date			DATE
);

CREATE TABLE GroupAccount (
group_id			INT,
account_id			INT,
join_date			DATE
);

CREATE TABLE TypeQuestion (
type_id				INT,
type_name			VARCHAR(24)
);

CREATE TABLE CategoryQuestion (
category_id			INT,
category_name		VARCHAR(24)
);

CREATE TABLE Question (
question_id			INT,
content				VARCHAR(1000),
category_id			INT,
type_id				INT,
creator_id			INT,
create_date			DATE
);

CREATE TABLE Answer (
answer_id			INT,
content				VARCHAR(1000),
question_id			INT,
is_correct			BOOLEAN
);

CREATE TABLE Exam (
exam_id				INT,
`code`				VARCHAR(12),
title				VARCHAR(48),
category_id			INT,
duration			TIME,
creator_id			INT,
create_date			DATE
);

CREATE TABLE ExamQuestion (
exam_id				INT,
question_id			INT
);

