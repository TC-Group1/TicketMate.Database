 
  CREATE TABLE IF NOT EXISTS `TicketMate`.`ProjectTickets` (
  `Id` INT NOT NULL AUTO_INCREMENT,
  `ProjectId` INT NOT NULL,
  `TicketId` INT NOT NULL,
  PRIMARY KEY (`Id`),
  INDEX `ProjectId_idx` (`ProjectId` ASC),
  CONSTRAINT `FK_Tickets_ProjectTickets`
    FOREIGN KEY (`TicketId`)
    REFERENCES `TicketMate`.`Tickets` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_Projects_ProjectTickets`
    FOREIGN KEY (`ProjectId`)
    REFERENCES `TicketMate`.`Projects` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);