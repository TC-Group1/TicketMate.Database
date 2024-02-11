CREATE TABLE IF NOT EXISTS `TicketMate`.`Projects` (
  `Id` INT NOT NULL AUTO_INCREMENT,
  `Guid` CHAR(36) NOT NULL,
  `Name` NVARCHAR(80) NOT NULL,
  `IsActive` TINYINT(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`Id`),
  UNIQUE INDEX `Guid_UNIQUE` (`Guid` ASC),
  INDEX IX_Projects_Guid (Guid ASC));
  
  CREATE TABLE IF NOT EXISTS `TicketMate`.`ProjectUsers` (
  `Id` INT NOT NULL AUTO_INCREMENT,
  `ProjectId` INT NOT NULL,
  `UserId` INT NOT NULL,
  PRIMARY KEY (`Id`),
  INDEX `ProjectId_idx` (`ProjectId` ASC),
  INDEX `UserId_idx` (`UserId` ASC),
  CONSTRAINT `FK_Projects_ProjectUsers`
    FOREIGN KEY (`ProjectId`)
    REFERENCES `TicketMate`.`Projects` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_Users_ProjectUsers`
    FOREIGN KEY (`UserId`)
    REFERENCES `TicketMate`.`Users` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);