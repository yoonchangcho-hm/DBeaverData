CREATE TABLE students (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  age INT NOT NULL,
  gender ENUM('M', 'F') NOT NULL,
  grade VARCHAR(10)
);

INSERT INTO students (name, age, gender, grade) VALUES
('Alice', 21, 'F', 'A'),
('Bob', 22, 'M', 'B'),
('Charlie', 20, 'M', 'C'),
('Daisy', 23, 'F', 'B'),
('Edward', 21, 'M', 'A');