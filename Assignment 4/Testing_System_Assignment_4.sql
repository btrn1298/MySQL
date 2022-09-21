-- Q1: Lấy ra danh sách nhân viên và phòng ban của họ
SELECT *
FROM `account` a
JOIN department d ON a.department_id = d.department_id;

-- Q2: Lấy thông tin account tạo sau ngày 20/12/2016
SELECT *
FROM `account`
WHERE create_date >= 20161220;

-- Q3: Lấy ra tất cả các Scrum Master
SELECT *
FROM `account` a
JOIN `position` p ON a.position_id = p.position_id
WHERE position_name = 'Scrum Master';

-- Q4: Lấy ra các phòng ban có >3 nhân viên
SELECT d.department_id,d.department_name , COUNT(account_id) AS amount_of_staff
FROM `account` a
JOIN department d ON a.department_id = d.department_id
GROUP BY a.department_id
HAVING COUNT(account_id) > 3;

-- Q5: Lấy ra danh sách câu hỏi được sử dụng trong để thi nhiều nhất
SELECT * 
FROM question q
JOIN examquestion eq ON q.question_id = eq.question_id
GROUP BY eq.question_id
HAVING COUNT(eq.question_id) = (SELECT max(amount_of_usage)
								FROM (SELECT COUNT(question_id), COUNT(question_id) AS amount_of_usage
										FROM examquestion
										GROUP BY question_id
										HAVING COUNT(question_id)) AS highest_amount_of_usage);



-- Q17: Lấy các account thuộc nhóm thứ 1. Lấy các account thuộc nhóm thứ 2. Ghép 2 kết quả sao cho không trùng
SELECT *
FROM groupaccount
WHERE group_id = 1
UNION
SELECT *
FROM groupaccount
WHERE group_id = 2;

-- Q18: Lấy group có 1 thành viên. Lấy group >=2 thành viên. Ghép 2 kết quả
SELECT * , COUNT(account_id) AS amount_of_members
FROM `group` g
JOIN groupaccount ga ON g.group_id = ga.group_id
GROUP BY g.group_id
HAVING COUNT(account_id) = 1
UNION ALL
SELECT * , COUNT(account_id) AS amount_of_members
FROM `group` g
JOIN groupaccount ga ON g.group_id = ga.group_id
GROUP BY g.group_id
HAVING COUNT(account_id) >= 2;

