CREATE TABLE IF NOT EXISTS `TicketMate`.`Statuses` (
  `Id` INT NOT NULL AUTO_INCREMENT,
  `Name` NVARCHAR(20) NOT NULL UNIQUE,
  PRIMARY KEY (`Id`)
);

INSERT INTO Statuses(Name)
VALUES('New'),
('Refine'),
('Active'),
('Closed'),
('Removed');

