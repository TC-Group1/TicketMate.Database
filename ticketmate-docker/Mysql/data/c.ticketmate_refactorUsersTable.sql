Use TicketMate;

Create Index idx_guid
On Users (Guid);

Alter Table Users
Modify Column PasswordHash varchar(256);

Alter Table Users
Add Column PhoneNumber varchar(15) Null Unique;

Alter Table Users
Add Column Email nvarchar(256) Null Unique;

Alter Table Users
Add Column FirstName nvarchar(40) Not Null;

Alter Table Users
Add Column LastName nvarchar(40) Not Null;

Alter Table Users
Add Column Avatar nvarchar(256) Null;

Alter Table Users
Add Column IsActive TinyInt Not Null Default(1);
