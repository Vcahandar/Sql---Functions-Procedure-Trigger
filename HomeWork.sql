create database Course

use Course

create table Students(
	Id int primary key identity(1,1),
	[Name] nvarchar(50),
	[Surname] nvarchar(50),
	[Age] int,
	[Email] nvarchar(50),
	[Address] nvarchar(50)
)

INSERT INTO Students([Name],[Surname],[Age],[Email],[Address])
VALUES('Cahandar','Velibeyli',27,'caho@gmail.com','Ehmedli'),
      ('Ismayil','Yusifov',25,'isi@gmail.com','Nargile'),
	  ('Ceyhun','Abbasov',26,'ceka@gmail.com','Nerimanov'),
	  ('Cavid','Ismayilzade',22,'cavid@gmail.com','Sulutepe'),
	  ('Ali','Aliyev',24,'ali@gmail.com','Xetai')

	  select * from Students


 create table StudentArchives(
	  [Id] int primary key identity(1,1),
	  [StudentID] int,
	  [Operation] nvarchar (10),
	  [Date] Datetime
	  )


create trigger trg_deleteStudent on Students
after delete
as
BEGIN
   insert into StudentArchives([StudentID],[Operation] , [Date])
   select Id,'Delete',GETDATE() from deleted
END




create procedure usp_deleteStudent
@id int 
as
BEGIN
  delete from Students where Id=@id
END

exec usp_deleteStudent 3


