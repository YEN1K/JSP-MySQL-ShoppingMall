# 🛒 SSG 쇼핑몰 웹 프로젝트 (JSP & MySQL)

JSP와 MySQL을 연동하여 구현한 쇼핑몰 웹 애플리케이션 프로젝트입니다.  
회원 관리, 게시판, 상품 조회, 장바구니 기능을 포함하며  
플로우차트 기반으로 전체 서비스 흐름을 설계한 뒤 구현하였습니다.

---

## 📌 프로젝트 개요

- **개발 목적**  
  JSP 기반 웹 애플리케이션 구조 이해 및  
  데이터베이스 연동을 통한 CRUD 기능 구현

- **개발 형태**  
  개인 프로젝트

- **개발 기간**  
  2024-11-04 ~ 2024-11-15

---

## 🛠 기술 스택

- **Frontend** : HTML, CSS, JavaScript
- **Backend** : JSP
- **Database** : MySQL
- **Server** : Apache Tomcat
- **Language** : Java
- **Tool** : Eclipse / Android Studio (SQL 관리)

---

## 🧩 주요 기능

### 1️⃣ 회원 관리
- 회원가입 / 로그인 / 로그아웃
- 세션을 활용한 로그인 상태 관리
- 회원 정보 DB 저장 및 검증

### 2️⃣ 게시판 기능
- 게시글 목록 조회
- 로그인 사용자만 게시글 작성 가능
- 게시글 DB 저장 및 출력

### 3️⃣ 상품 및 장바구니
- 상품 목록 조회
- 로그인 사용자 장바구니 담기
- 장바구니 데이터 DB 저장

---

## 🗂 프로젝트 구조

SSG-JSP-ShoppingMall
├─ flowchart
│ ├─ ssg_flowchart.png
│ └─ flowchart_description.md
│
├─ database
│ ├─ schema.sql
│ └─ sample_data.sql
│
└─ jsp
├─ common
│ └─ dbconn.jsp
├─ member
├─ board
├─ item
└─ cart


---

## 📊 설계 설명

- 전체 서비스 흐름을 플로우차트로 설계한 후 JSP 페이지 구조를 구성
- 기능 단위로 JSP 폴더를 분리하여 유지보수성을 고려
- 공통 DB 연결 파일을 분리하여 코드 중복 최소화
- DB 테이블 간 관계를 고려한 JOIN 쿼리 사용

---

## ✨ 프로젝트를 통해 배운 점

- JSP와 MySQL 연동을 통한 웹 서비스 기본 구조 이해
- CRUD 기능 구현 경험
- 세션 기반 사용자 인증 흐름 이해
- 기능 흐름을 고려한 설계의 중요성 인식

---

## 🙋‍♀️ 담당 역할

- DB 테이블 설계 및 SQL 작성
- JSP 페이지 구조 설계
- 회원가입 / 게시판 / 장바구니 기능 구현
- 전체 서비스 플로우차트 설계
