CREATE TABLE board_tbl (
    board_no INT PRIMARY KEY AUTO_INCREMENT,
    board_writer VARCHAR(20),
    board_subject VARCHAR(100),
    board_contents TEXT,
    board_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    board_image VARCHAR(255),
    board_readCount INT DEFAULT 0
);
