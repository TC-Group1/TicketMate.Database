CREATE TABLE IF NOT EXISTS `TicketMate`.`Tickets` (
  `Id` INT NOT NULL AUTO_INCREMENT,
  `Guid` CHAR(36) NOT NULL,
  `ProjectId` INT NOT NULL,
  `Title` NVARCHAR(80) NOT NULL,
  `Description` TEXT,
  `PriorityId` INT,
  `StatusId` INT NOT NULL DEFAULT 1,
  `DateCreated` DATETIME NOT NULL DEFAULT (UTC_TIMESTAMP()), 
  `CreatedByUserId` INT NOT NULL,
  `LastModified` DATETIME NULL,
  PRIMARY KEY (`Id`),
  UNIQUE INDEX `Guid_UNIQUE` (`Guid` ASC),
  INDEX `Guid_Index` (`Guid` ASC),
  FOREIGN KEY (`ProjectId`) REFERENCES `TicketMate`.`Projects` (`Id`),
  FOREIGN KEY (`PriorityId`) REFERENCES `TicketMate`.`Priorities` (`Id`),
  FOREIGN KEY (`StatusId`) REFERENCES `TicketMate`.`Statuses` (`Id`),
  FOREIGN KEY (`CreatedByUserId`) REFERENCES `TicketMate`.`Users` (`Id`)
);