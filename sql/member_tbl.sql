CREATE DATABASE _01_ssg;
USE _01_ssg;

CREATE TABLE member_tbl(   
   member_no INT PRIMARY KEY AUTO_INCREMENT, 
   member_id VARCHAR(20),
   member_pw VARCHAR(20),
   member_name VARCHAR(20),
   member_address VARCHAR(20),
   member_regist_date DATETIME DEFAULT CURRENT_TIMESTAMP,
   member_rank VARCHAR(20)
);

INSERT INTO member_tbl (member_id, member_pw, member_name, member_address, member_rank)
VALUES
('user1','password1','홍길동','서울','1'),
('user2','password2','김철수','부산','1');
