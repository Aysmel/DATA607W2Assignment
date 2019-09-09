-- Host: localhost    Database: movies

-- Table structure for table `movie`
DROP TABLE IF EXISTS `movie`;
CREATE TABLE `movie` (
  `movID` INT(8) NOT NULL,
  `movName` varchar(50) NOT NULL,
  `movReleaseYr` YEAR(4) NOT NULL,
  `movDuration` INT(4),	-- Duration in minutes
  PRIMARY KEY (`movID`)
);

-- Insert values into movie table  
INSERT INTO movie
VALUES (10000000, 'The Lion King', 2019, 118),
  (10000001, 'Avengers: Infinity War', 2018, 160),
  (10000002, 'Avengers: Endgame', 2019, 182),
  (10000003, 'Aladdin', 2019, 129),
  (10000004, 'Instructions Not Included', 2013, 122),
  (10000005, 'The Beauty and the Beast', 2017, 139);


-- Table structure for table `guest`
DROP TABLE IF EXISTS `guest`;

CREATE TABLE `guest` (
  `gueUserID` varchar(15) NOT NULL,
  `gueName` varchar(50) NOT NULL,
  `gueMemberSince` YEAR(4),
  PRIMARY KEY (`gueUserID`)
);

-- Insert values into guest table  
INSERT INTO guest
VALUES ('AntTheBest', 'Anthony', 2019),
  ('CaroCaro', 'Caroline', 2017),
  ('Lalita', 'Laura', 2018),
  ('Niwde', 'Edwin', 2019),
  ('CarLoco', 'Carlos', 2015);
  

-- Table structure for table `review`
DROP TABLE IF EXISTS `review`;

CREATE TABLE `review` (
  `revID` INT(10) NOT NULL,
  `revGueUserID` varchar(15) NOT NULL,
  `revMovID` INT(8) NOT NULL,
  `rating` INT(1),
  PRIMARY KEY (`revID`),
  FOREIGN KEY (revGueUserID) REFERENCES guest(gueUserID),
  FOREIGN KEY (revMovID) REFERENCES movie(movID)
);

-- Insert values into review table  
INSERT INTO review
VALUES (1000000000, 'AntTheBest', 10000000, 3),
  (1000000001, 'AntTheBest', 10000001, 5),
  (1000000002, 'AntTheBest', 10000002, 5),
  (1000000003, 'AntTheBest', 10000003, 5),
  (1000000004, 'AntTheBest', 10000004, 5),
  (1000000005, 'AntTheBest', 10000005, NULL),
  (1000000006, 'CaroCaro', 10000000, 5),
  (1000000007, 'CaroCaro', 10000001, 4),
  (1000000008, 'CaroCaro', 10000002, 4),
  (1000000009, 'CaroCaro', 10000003, NULL),
  (1000000010, 'CaroCaro', 10000004, NULL),
  (1000000011, 'CaroCaro', 10000005, 4),
  (1000000012, 'Lalita', 10000000, 4),
  (1000000013, 'Lalita', 10000001, NULL),
  (1000000014, 'Lalita', 10000002, NULL),
  (1000000015, 'Lalita', 10000003, 5),
  (1000000016, 'Lalita', 10000004, NULL),
  (1000000017, 'Lalita', 10000005, NULL),
  (1000000018, 'Niwde', 10000000, 3),
  (1000000019, 'Niwde', 10000001, NULL),
  (1000000020, 'Niwde', 10000002, 5),
  (1000000021, 'Niwde', 10000003, 4),
  (1000000022, 'Niwde', 10000004, 5),
  (1000000023, 'Niwde', 10000005, NULL),
  (1000000024, 'CarLoco', 10000000, 4),
  (1000000025, 'CarLoco', 10000001, 5),
  (1000000026, 'CarLoco', 10000002, 5),
  (1000000027, 'CarLoco', 10000003, 4),
  (1000000028, 'CarLoco', 10000004, 4),
  (1000000029, 'CarLoco', 10000005, 3);