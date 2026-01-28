🛒 JSP & MySQL 기반 쇼핑몰 웹 프로젝트
📌 프로젝트 개요

본 프로젝트는 JSP와 MySQL을 연동하여 쇼핑몰 형태의 웹 애플리케이션을 구현한 학습 프로젝트입니다.
회원 관리, 게시판, 상품, 장바구니 기능을 플로우차트 기반으로 설계하고,
DB 테이블 설계부터 SQL 쿼리 작성, JSP 연동까지 전반적인 웹 서비스 흐름을 경험하는 것을 목표로 했습니다.

🧭 전체 시스템 흐름

- 메인 페이지를 중심으로 회원 / 상품 / 게시판 기능 분리

- 로그인 여부에 따라 접근 가능한 기능 구분

- DB 연동을 통한 데이터 저장 / 조회 / 수정 / 삭제(CRUD) 구현

주요 흐름

- 비로그인: 상품 조회, 게시글 조회 가능

- 로그인: 게시글 작성·수정·삭제, 장바구니 기능 사용

- 회원탈퇴 시: DB 회원 정보 및 장바구니 데이터 삭제

👤 회원 관리 기능 (member_tbl)
기능

- 회원가입 (ID 중복 체크)

- 로그인 / 로그아웃

- 회원탈퇴

- 회원 등급(member_rank) 관리

테이블 구조
create table member_tbl(   
   member_no int primary key auto_increment, 
   member_id varchar(20),
   member_pw varchar(20),
   member_name varchar(20),
   member_address varchar(20),
   member_regist_date DATETIME DEFAULT CURRENT_TIMESTAMP,
   member_rank varchar(20)
);

구현 내용

- 회원 정보 DB 저장

- 조건 검색, 정렬, 집계 함수 활용

- JOIN을 활용한 게시판 연동 조회

📝 게시판 기능 (board_tbl)
기능

- 게시글 작성 / 조회 / 수정 / 삭제

- 로그인 여부에 따른 권한 제어

- 조회수 관리

테이블 구조
CREATE TABLE board_tbl (
    board_no INT PRIMARY KEY AUTO_INCREMENT,
    board_writer VARCHAR(20),
    board_subject VARCHAR(100),
    board_contents TEXT,
    board_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    board_image VARCHAR(255),
    board_readCount INT DEFAULT 0
);

구현 내용

- 작성자 이름 기준 정렬

- 키워드 검색 (LIKE)

- 회원 정보와 JOIN하여 조건 조회

🛍️ 상품 관리 기능 (item_tbl)
기능

- 카테고리별 상품 조회

- 가격 정렬

- 조건 검색

- 통계 쿼리 활용

테이블 구조
create table item_tbl(
   item_no int primary key,      
   item_category varchar(20),
   item_name varchar(20),
   item_price int,
   item_image varchar(30),
   item_info varchar(30),
   item_discount int,
   item_soldCount int
);

구현 내용

- 서브쿼리 활용 (평균 가격 비교)

- LIKE 검색

- 가격 조건 비교

🛒 장바구니 기능 (cart_tbl)
기능

- 상품 추가 / 삭제

- 구매 수량 및 가격 관리

- 로그인 사용자 기준 데이터 관리

테이블 구조
create table cart_tbl(
   cart_no int,      
   cart_buyerId varchar(20),
   cart_itemName varchar(20),
   cart_buyPrice int,
   cart_buyCount int,
   cart_itemImage varchar(20)
);

🧠 핵심 학습 포인트

- JSP ↔ MySQL 연동 구조 이해

- DB 테이블 설계 및 관계 이해

- CRUD 기능 구현

- JOIN / 서브쿼리 / 집계 함수 활용

- 로그인 상태에 따른 기능 분기 처리

🛠️ 개발 환경

- Language: JSP, SQL

- DBMS: MySQL

- Server: Apache Tomcat

- Tool: Eclipse / MySQL Workbench

📂 프로젝트 구성
📁 jsp
 ┣ join.jsp
 ┣ joinpro.jsp
 ┣ login.jsp
 ┣ loginpro.jsp

📁 sql
 ┣ member_tbl.sql
 ┣ board_tbl.sql
 ┣ item_tbl.sql
 ┣ cart_tbl.sql

✨ 정리

본 프로젝트는 쇼핑몰 웹 서비스의 기본 구조를 이해하고 구현하는 데 초점을 둔 프로젝트로,
실제 서비스 흐름을 고려한 DB 설계와 JSP 연동 경험을 통해
웹 백엔드 기초 역량을 강화할 수 있었습니다.
