DROP DATABASE IF EXISTS fresher_training_management;
CREATE DATABASE fresher_training_management;
USE fresher_training_management;


CREATE TABLE trainee (
trainee_id			INT,
full_name			VARCHAR(120),
birth_date			DATE,
gender				VARCHAR(7),
et_iq				TINYINT(20),
et_gmath			TINYINT(20),
et_english			INT(50),
training_class		VARCHAR(10),
evaluation_note		TEXT
);
ALTER TABLE trainee ADD vti_account VARCHAR(20);

CREATE TABLE general_information (
id					INT,
`name`				TINYTEXT,
`code`				CHAR(5),
modified_date		DATETIME,
PRIMARY KEY	(id)
);

CREATE TABLE personal_information (
user_id				INT,
user_name			TINYTEXT,
birth_date			DATE,
gender				INT NULL CHECK(gender = 0 OR gender = 1),
is_deleted_flag		BOOLEAN,
PRIMARY KEY	(user_id)
);