
 --CREATE FUNCTION SayHelloWord()
 --RETURNS NVARCHAR (50)
 --AS
 --BEGIN
 --   RETURN 'Hello World'
 --END

--SELECT dbo.SayHelloWord()


 --CREATE FUNCTION dbo.writeWord(@word nvarchar(20))
 --RETURNS NVARCHAR (50)
 --AS
 --BEGIN
 --   RETURN @word
 --END

 --SELECT dbo.writeWord('P135')

 -- CREATE FUNCTION dbo.writeWord(@word nvarchar(20))
 --RETURNS NVARCHAR (50)
 --AS
 --BEGIN
 --   RETURN @word
 --END

 --DECLARE @word nvarchar (20) = 'P135'

 --SELECT dbo.writeWord(@word)


 --  CREATE FUNCTION dbo.sumOfNumbers(@num1 int, @num2 int)
 --RETURNS INT
 --AS
 --BEGIN
 --   RETURN @num1+@num2
 --END


 --SELECT dbo.sumOfNumbers(5,10)



 --CREATE FUNCTION dbo.getCustomerCount()
 --RETURNS INT
 --AS
 --BEGIN
 -- DECLARE @count INT
 --  SELECT @count=COUNT (*) FROM Customers
 --  return @count
 --END

 --SELECT dbo.getCustomerCount()



 --CREATE FUNCTION dbo.getCustomerAvarageAgeById(@id int)
 --RETURNS INT
 --AS
 --BEGIN
 -- DECLARE @avgAge INT
 --  SELECT @avgAge = AVG (Age) FROM Customers WHERE Id > @id
 --  return @avgAge
 --END

 -- SELECT dbo.getCustomerAvarageAgeById(4)





-- CREATE PROCEDURE usp_SayHelloWorld
-- AS
-- BEGIN
--   PRINT 'Hello World'
-- END

--EXEC usp_SayHelloWorld


-- CREATE PROCEDURE usp_sumOfNums
-- @num1 int,
-- @num2 int
-- --as
-- BEGIN
--    PRINT @num1 + @num2
-- END

--EXEC usp_sumOfNums 5,8


-- CREATE PROCEDURE usp_addCustomer
-- @name nvarchar (50),
-- @surname nvarchar (50),
-- @age int 
-- as
-- BEGIN
--    INSERT INTO Customers ([Name],[Surname],[Age])
--	VALUES (@name,@surname,@age) 
-- END

--EXEC usp_addCustomer 'Ali','Talibov',21 



-- CREATE PROCEDURE usp_deleteCustomer
-- @Id int 
-- as
-- BEGIN
--   delete from Customers where Id = @id 
-- END

--EXEC usp_deleteCustomer 3


-- CREATE PROCEDURE usp_deleteCustomerAndShowDatas
-- @Id int 
-- as
-- BEGIN
--   delete from Customers where Id = @id 
--   select * from Customers
-- END

--EXEC usp_deleteCustomerAndShowDatas 5

--CREATE PROCEDURE usp_SearchOperation
--@text nvarchar (100),
--@search nvarchar (50)
--as
--BEGIN
--   DECLARE @num int
--   SELECT @num = CHARINDEX(@search,@text)

--   IF @num > 0
--     PRINT 'Yes'
--	ELSE
--	  PRINT 'No'

--END

--exec usp_SearchOperation 'Azerbaycan','A'


create table CustomerLogs(
 [Id] int primary key identity(1,1),
 [CustomerID] int,
 [Operation] nvarchar(10),
 [Date] datetime 
)	


--create trigger trg_insertCustomer on Customers
--after insert 
--as
--BEGIN
--   insert into CustomerLogs([CustomerID],[Operation],[Date])
--   select Id,'Insert',GETDATE() from inserted
--END

--create procedure usp_insertCustomer
--@name nvarchar (20),
--@surname nvarchar (20),
--@age int 
--as
--BEGIN
--  insert into Customers ([Name],[Surname],[Age])
--  values (@name,@surname,@age)
--END


--exec usp_insertCustomer 'Ceyhun','Agayev',23


--create trigger trg_deleteCustomer on Customers
--after delete 
--as
--BEGIN
--   insert into CustomerLogs([CustomerID],[Operation],[Date])
--   select Id,'Delete',GETDATE() from deleted
--END


--delete from Customers where Id = 1


--create trigger trg_updateCustomer1 on Customers
--after update
--as
--BEGIN
--	insert into CustomerLogs([CustomerID],[Operation],[Date])
--	select Id,'Update',GETDATE() from deleted
--END


--update Customers 
--set [Name] = 'Elekber' where Id = 4


--select * from CustomerLogs where CustomerId = 4