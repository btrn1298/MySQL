INSERT INTO department(department_id,department_name) VALUES
(11,'Board of Director'),
(12,'Human Resource'),
(13,'Marketing'),
(14,'Accounting'),
(15,'Business Development'),
(16,'Customer Service'),
(17,'Technical'),
(18,'Security');

INSERT INTO `position`(position_id,position_name) VALUES
(1,'Dev'),
(2,'Test'),
(3,'Scrum Master'),
(4,'PM');

INSERT INTO `account`(account_id,email,username,fullname,department_id,position_id,create_date) VALUES
(1,'DongNhi@gbc.com','dongnhi1989','Mai Hong Ngoc',14,1,20200619),
(2,'NooPhuocThinh@gbc.com','nooptnoo','Nguyen Duc Thinh',12,2,20190304),
(3,'HoNgocHa@gbc.com','hahoho','Ho Ngoc Ha',15,4,20160823),
(4,'DieuNhi@gbc.com','tunhi4ever','Nguyen Dieu Nhi',17,3,20201203),
(5,'LyLy@gbc.com','lylyanhtu','Nguyen Phuong Ly',11,3,20200525);

INSERT INTO `Group`(group_id,group_name,creator_id,create_date) VALUES
(1,'Fearless',5,20211225),
(2,'Hello',2,20200127),
(3,'A Glimpse Of Us',1,20210726),
(4,'Fearless',4,20220526),
(5,'Fearless',5,20211126);

INSERT INTO GroupAccount(group_id,account_id,join_date) VALUES
(5,1,20211126),
(3,1,20210726),
(1,5,20211225),
(5,2,20200127),
(4,4,20220526);

INSERT INTO TypeQuestion(type_id,type_name) VALUES
(10001,'Essay'),
(10002,'Multiple-Choice');

INSERT INTO CategoryQuestion(category_id,category_name) VALUES
(111,'Science'),
(112,'Mathematics'),
(113,'Literature'),
(114,'History'),
(115,'Geography');

INSERT INTO Question(question_id,content,category_id,type_id,creator_id,create_date) VALUES
(1,'How many continents are there on Earth?',115,10002,3,20220222),
(2,'What is the square root of 100?',112,10002,4,20220525),
(3,'What do you think about the Internet?',113,10001,2,20220607),
(4,'Do you think that the future is the result of past events?',114,10001,1,20220425),
(5,'What did Tesla invent?',111,10002,5,20220825);

INSERT INTO Answer(answer_id,content,question_id,is_correct) VALUES
(1,'7',1,true),
(2,'fire',5,false),
(3,'lightbulb',5,true),
(4,'9',2,false),
(5,'10',2,true);

INSERT INTO Exam(exam_id,`code`,title,category_id,duration,creator_id,create_date) VALUES
(401,'MIDTERM001','Mid-Term Test',111,013000,1,20220925),
(402,'MIDTERM002','Mid-Term Test',111,013000,1,20220925),
(403,'MIDTERM003','Mid-Term Test',115,020000,1,20220925),
(404,'MIDTERM004','Mid-Term Test',114,010000,1,20160925),
(405,'MIDTERM005','Mid-Term Test',112,013000,1,20220925);

INSERT INTO ExamQuestion(exam_id,question_id) VALUES
(404,3),
(401,4),
(402,4),
(403,3),
(405,1);
