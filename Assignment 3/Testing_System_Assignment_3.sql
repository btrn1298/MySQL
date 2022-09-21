-- Q2
SELECT *
FROM department;

-- Q3
SELECT department_id
FROM department
WHERE department_name = 'Sales';

-- Q4
SELECT *
FROM `account`
WHERE char_length(fullname) = (SELECT max(char_length(fullname)) FROM `account`)
ORDER BY char_length(fullname) DESC;

-- Q5
SELECT *
FROM `account`
WHERE department_id = 13 AND char_length(fullname) = (SELECT max(char_length(fullname)) FROM `account`);

-- Q6
SELECT group_name
FROM `group`
WHERE create_date < '2019-12-20';

-- Q7
SELECT question_id, COUNT(answer_id) AS number_of_answers
FROM answer
GROUP BY question_id
HAVING COUNT(answer_id) >= 4;

-- Q8
SELECT exam_id
FROM exam
WHERE duration >= '01:00:00' AND create_date < '2019-12-20';

-- Q9
SELECT *
FROM `group`
ORDER BY create_date DESC
LIMIT 5;

-- Q10
SELECT COUNT(account_id) AS amount_of_staff
FROM `account`
WHERE department_id = 12;

-- Q11
SELECT fullname
FROM `account`
WHERE fullname LIKE 'D%o';

-- Q12
DELETE FROM exam
WHERE create_date < '2019-12-20';

-- Q13
DELETE FROM question
WHERE content LIKE N'câu hỏi%';

-- Q14
UPDATE `account`
SET
fullname = 'Nguyễn Bá Lộc',
email = 'loc.nguyenba@vti.com.vn'
WHERE account_id = 5;

-- Q15
UPDATE `account`
SET department_id = 14
WHERE account_id = 5;
