DROP DATABASE IF EXISTS fresher_training_management;
CREATE DATABASE fresher_training_management;
USE fresher_training_management;


CREATE TABLE trainee (
trainee_id			INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
full_name			VARCHAR(100),
birth_date			DATE,
gender				ENUM('male','female','unknown'),
et_iq				INT UNSIGNED NOT NULL CHECK(et_iq <= 20),
et_gmath			INT UNSIGNED NOT NULL CHECK(et_gmath <= 20),
et_english			INT UNSIGNED NOT NULL CHECK(et_english <= 50),
training_class		VARCHAR(10),
evaluation_note		TEXT
);
ALTER TABLE trainee ADD vti_account VARCHAR(20) NOT NULL UNIQUE KEY;

CREATE TABLE general_information (
id					INT UNSIGNED AUTO_INCREMENT PRIMARY  KEY,
`name`				VARCHAR(80),
`code`				CHAR(5),
modified_date		DATETIME DEFAULT NOW()
);

CREATE TABLE personal_information (
user_id				INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
user_name			VARCHAR(80),
birth_date			DATE,
gender				INT,
is_deleted_flag		BOOLEAN
);