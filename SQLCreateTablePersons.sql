CREATE DATABASE HomeworkNET;
USE HomeworkNET;

CREATE TABLE Persons (
	id INT PRIMARY KEY NOT NULL,
	firstName VARCHAR(MAX) NOT NULL,
	lastName VARCHAR(MAX) NOT NULL,
	gender BIT NOT NULL,
	age INT NOT NULL);

INSERT INTO persons (id, firstName, lastName, gender, age) 
VALUES 
	('1', 'Sarah', 'Clark', '1', '59'), 
	('2', 'Isabelle', 'Chapman', '2', '63'), 
	('3', 'Graham', 'Harris', '2', '42'), 
	('4', 'Katie', 'Parker', '2', '46'), 
	('5', 'Peter', 'Hunt', '1', '26'), 
	('6', 'Tracy', 'Thompson', '2', '41'), 
	('7', 'Nathan', 'Rose', '1', '21'), 
	('8', 'Jasmine', 'Wilkinson', '1', '42'), 
	('9', 'Erin', 'Robertson', '2', '42'), 
	('10', 'Ben', 'Richards', '1', '28'), 
	('11', 'Theresa', 'Morgan', '2', '43'), 
	('12', 'Alex', 'Rogers', '2', '35'), 
	('13', 'Ruth', 'Murray', '2', '22'), 
	('14', 'Gavin', 'Wilson', '2', '51'), 
	('15', 'Abbie', 'Price', '1', '45'), 
	('16', 'Becky', 'Harrison', '1', '48'), 
	('17', 'Rob', 'Taylor', '1', '56'), 
	('18', 'Harry', 'Reid', '1', '49'), 
	('19', 'Jason', 'Jones', '2', '50'), 
	('20', 'Mary', 'Carter', '1', '53'), 
	('21', 'Will', 'Robertson', '1', '32'), 
	('22', 'Tracy', 'Smith', '2', '43'), 
	('23', 'Holly', 'Mason', '1', '59'), 
	('24', 'Francesca', 'Brown', '1', '58'), 
	('25', 'Elsie', 'Hughes', '2', '50'), 
	('26', 'Stephanie', 'Palmer', '1', '57'), 
	('27', 'Karen', 'King', '1', '27'), 
	('28', 'Helen', 'Robertson', '2', '29'), 
	('29', 'Yvonne', 'Bennett', '2', '55'), 
	('30', 'Gordon', 'Wilson', '1', '38'), 
	('31', 'Sienna', 'Turner', '2', '61'), 
	('32', 'Summer', 'Palmer', '2', '19'), 
	('33', 'Helena', 'Powell', '1', '38'), 
	('34', 'Harrison', 'Watson', '2', '32'), 
	('35', 'Adam', 'Johnson', '2', '38'), 
	('36', 'Vanessa', 'Butler', '1', '43'), 
	('37', 'Stephanie', 'Anderson', '1', '31'), 
	('38', 'Logan', 'Fox', '2', '51'), 
	('39', 'Jodie', 'Thompson', '2', '44'), 
	('40', 'Louis', 'Griffiths', '1', '51'), 
	('41', 'Freddie', 'Bailey', '1', '47'), 
	('42', 'Alfie', 'Davies', '2', '49'), 
	('43', 'Alexandra', 'Thomas', '1', '29'), 
	('44', 'Stephen', 'Walker', '1', '36'), 
	('45', 'Tracy', 'Wilson', '2', '50'), 
	('46', 'Alice', 'Bell', '1', '31'), 
	('47', 'Mike', 'Hill', '1', '42'), 
	('48', 'Daisy', 'Chapman', '2', '55'), 
	('49', 'Luke', 'Hunt', '2', '20'), 
	('50', 'Lucas', 'Griffiths', '2', '27'), 
	('51', 'Charlotte', 'Lee', '2', '53'), 
	('52', 'William', 'Turner', '2', '38'), 
	('53', 'Scott', 'Brown', '2', '61'), 
	('54', 'Freddie', 'Chapman', '1', '43'), 
	('55', 'Tony', 'Morris', '2', '28'), 
	('56', 'Faye', 'Clark', '2', '35'), 
	('57', 'Scarlett', 'Watson', '1', '25'), 
	('58', 'Isabella', 'Mason', '1', '56'), 
	('59', 'Millie', 'Murphy', '1', '45'), 
	('60', 'Tracy', 'Young', '1', '25'), 
	('61', 'Will', 'Morgan', '1', '41'), 
	('62', 'Lola', 'Johnson', '1', '31'), 
	('63', 'Lexi', 'Clarke', '1', '27'), 
	('64', 'Jordan', 'Williams', '2', '28'), 
	('65', 'Craig', 'Edwards', '2', '20'), 
	('66', 'Jake', 'Patel', '2', '50'), 
	('67', 'Maria', 'Patel', '1', '57'), 
	('68', 'Rowena', 'Reid', '1', '57'), 
	('69', 'Isla', 'Anderson', '1', '25'), 
	('70', 'Scott', 'Carter', '2', '24'), 
	('71', 'Hannah', 'Lloyd', '2', '20'), 
	('72', 'Freddie', 'Ellis', '1', '59'), 
	('73', 'William', 'Moore', '1', '24'), 
	('74', 'Natasha', 'Ross', '1', '55'), 
	('75', 'Tom', 'Williams', '2', '29'), 
	('76', 'Alison', 'Ward', '1', '40'), 
	('77', 'Wayne', 'Anderson', '1', '50'), 
	('78', 'Paula', 'Matthews', '2', '48'), 
	('79', 'Sasha', 'Marshall', '2', '48'), 
	('80', 'Jane', 'Graham', '1', '41'), 
	('81', 'Millie', 'Reid', '2', '34'), 
	('82', 'Lisa', 'Hughes', '2', '58'), 
	('83', 'Lexi', 'Ward', '2', '40'), 
	('84', 'Olivia', 'Simpson', '1', '65'), 
	('85', 'Shannon', 'Carter', '2', '32'), 
	('86', 'Daisy', 'Lee', '1', '56'), 
	('87', 'Jake', 'Cox', '1', '54'), 
	('88', 'Graham', 'Stewart', '1', '25'), 
	('89', 'Logan', 'Baker', '2', '30'), 
	('90', 'Barry', 'Ward', '1', '34'), 
	('91', 'Sabrina', 'Murphy', '2', '29'), 
	('92', 'Carrie', 'Price', '1', '61'), 
	('93', 'Grant', 'Chapman', '2', '31'), 
	('94', 'Arthur', 'Hall', '2', '35'), 
	('95', 'Jennifer', 'Morris', '1', '48'), 
	('96', 'Charles', 'Clarke', '1', '59'), 
	('97', 'Jake', 'Stewart', '2', '63'), 
	('98', 'Neil', 'Phillips', '2', '20'), 
	('99', 'Carrie', 'Robertson', '1', '21'), 
	('100', 'Alexa', 'Holmes', '2', '51');