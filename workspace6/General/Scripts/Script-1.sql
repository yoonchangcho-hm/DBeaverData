use testdb;
CREATE TABLE `user` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `email` varchar(20),
  `name` varchar(20),
  `password` varchar(20),
  `data` timestamp
);

CREATE TABLE `product` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(50),
  `price` int
);

CREATE TABLE `buy` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `userId` int,
  `productId` int,
  `date` timestamp
);

ALTER TABLE `buy` ADD FOREIGN KEY (`userId`) REFERENCES `user` (`id`);

ALTER TABLE `buy` ADD FOREIGN KEY (`prouductId`) REFERENCES `product` (`id`);
