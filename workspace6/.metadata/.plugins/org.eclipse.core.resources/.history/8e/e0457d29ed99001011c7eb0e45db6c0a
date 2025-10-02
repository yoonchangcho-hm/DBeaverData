USE blogboard;

-- 사용자 테이블 생성
CREATE TABLE `users` (
  `userId` BIGINT PRIMARY KEY AUTO_INCREMENT,
  `useremail` VARCHAR(225) NOT NULL,
  `username` VARCHAR(100) NOT NULL,
  `password` VARCHAR(225) NOT NULL
);

-- 블로그 테이블 생성
CREATE TABLE `blogs` (
  `blogId` BIGINT PRIMARY KEY AUTO_INCREMENT,
  `title` VARCHAR(255) NOT NULL,
  `content` VARCHAR(255) NOT NULL,
  `islive` VARCHAR(255) NOT NULL,
  `userId` BIGINT NOT NULL
);

-- 댓글 테이블 생성
CREATE TABLE `comment` (
  `commentId` BIGINT PRIMARY KEY AUTO_INCREMENT,
  `content` VARCHAR(255) NOT NULL,
  `userId` BIGINT NOT NULL,
  `blogId` BIGINT NOT NULL
);

-- 사용자 데이터 삽입
INSERT INTO `users` (useremail, username, password) VALUES
('alice@example.com', '앨리스', 'passAlice123'),
('bob@example.com', '밥', 'passBob123'),
('carol@example.com', '캐롤', 'passCarol123'),
('dave@example.com', '데이브', 'passDave123'),
('eve@example.com', '이브', 'passEve123');

-- 블로그 데이터 삽입
INSERT INTO `blogs` (title, content, islive, userId) VALUES
('첫 번째 블로그', '앨리스의 첫 번째 블로그입니다.', 'true', 1),
('밥의 생각들', '밥이 기술에 대한 생각을 공유합니다.', 'true', 2),
('캐롤의 요리 팁', '캐롤의 맛있는 요리 레시피.', 'false', 3),
('데이브의 여행 일기', '데이브와 함께 세계를 탐험해요.', 'true', 4),
('이브의 책 리뷰', '인기 있는 책에 대한 솔직한 리뷰.', 'false', 5);

-- 댓글 데이터 삽입
INSERT INTO `comment` (content, userId, blogId) VALUES
('좋은 글이에요, 앨리스님!', 2, 1),
('밥님의 생각에 공감합니다.', 3, 2),
('캐롤님의 요리 팁 정말 유용해요!', 4, 3),
('데이브님 여행기 너무 재밌어요!', 5, 4),
('이브님의 리뷰 덕분에 책 골랐어요!', 1, 5);

-- 데이터 조회
SELECT * FROM users;
SELECT * FROM blogs;
SELECT * FROM comment;

-- 외래 키 설정
ALTER TABLE `blogs`
  ADD FOREIGN KEY (`userId`) REFERENCES `users` (`userId`);

ALTER TABLE `comment`
  ADD FOREIGN KEY (`userId`) REFERENCES `users` (`userId`);

ALTER TABLE `comment`
  ADD FOREIGN KEY (`blogId`) REFERENCES `blogs` (`blogId`);
