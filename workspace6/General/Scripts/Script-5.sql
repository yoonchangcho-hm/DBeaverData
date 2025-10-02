use blogboard

CREATE TABLE `user` (
  `userId` BIGINT PRIMARY KEY AUTO_INCREMENT,
  `useremail` VARCHAR(225) NOT NULL,
  `username` VARCHAR(100) NOT NULL,
  `password` VARCHAR(225) NOT NULL
);

CREATE TABLE `blogs` (
  `blogId` BIGINT PRIMARY KEY AUTO_INCREMENT,
  `title` VARCHAR(255) NOT NULL,
  `content` VARCHAR(255) NOT NULL,
  `islive` VARCHAR(255) NOT NULL,
  `userId` BIGINT NOT NULL
);

CREATE TABLE `comment` (
  `commentId` BIGINT PRIMARY KEY AUTO_INCREMENT,
  `content` VARCHAR(255) NOT NULL,
  `userId` BIGINT NOT NULL,
  `blogId` BIGINT NOT NULL
);



ALTER TABLE `blogs` ADD FOREIGN KEY (`userId`) REFERENCES `user` (`userId`);

ALTER TABLE `comment` ADD FOREIGN KEY (`userId`) REFERENCES `user` (`userId`);

ALTER TABLE `comment` ADD FOREIGN KEY (`blogId`) REFERENCES `blogs` (`blogId`);
