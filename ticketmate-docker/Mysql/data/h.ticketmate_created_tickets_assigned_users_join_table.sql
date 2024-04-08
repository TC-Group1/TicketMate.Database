 
  CREATE TABLE IF NOT EXISTS `TicketMate`.`TicketsAssignedUsers` (
  `Id` INT NOT NULL AUTO_INCREMENT,
  `TicketId` INT NOT NULL,
  `UserId` INT NOT NULL,
  PRIMARY KEY (`Id`),
  INDEX `TicketId_idx` (`TicketId` ASC),
  INDEX `UserId_idx` (`UserId` ASC),
  CONSTRAINT `FK_Ticket_AssignedUsers`
    FOREIGN KEY (`TicketId`)
    REFERENCES `TicketMate`.`Tickets` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_Users_AssignedTickets`
    FOREIGN KEY (`UserId`)
    REFERENCES `TicketMate`.`Users` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);