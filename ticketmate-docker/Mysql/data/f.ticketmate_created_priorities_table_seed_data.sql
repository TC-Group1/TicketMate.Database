CREATE TABLE IF NOT EXISTS `TicketMate`.`Priorities` (
  `Id` INT NOT NULL AUTO_INCREMENT,
  `Name` NVARCHAR(20) NOT NULL UNIQUE,
  PRIMARY KEY (`Id`)
);

INSERT INTO Priorities(Name)
VALUES('Low'),
('Medium'),
('High');