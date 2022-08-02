-- Multiplex Cinema db
create table Seats(
st_Id int primary key identity, 
st_No int,
Total_Seats int,
Seat_Booked varchar(20),
Seat_Available int
);

create table Movies(
M_Id int primary key identity,
M_Name varchar(30),
M_Description varchar(40),
M_Time varchar(40),
M_Status varchar(10)
);

create table Tickets(
T_Id int primary key identity,
T_Price int,
T_Number int,
st_Id int Foreign Key References Seats(st_Id),
M_Id int Foreign Key References Movies(M_Id)
);


-- Food Court db

create table Menu(
Menu_Id int primary key identity,
Food_Name varchar(30),
Food_Price int
);

create table [Tables](
T_Id int primary key identity,
T_Number int 
);

create table Orders(
Order_Id int primary key identity,
Order_Number int,
T_Id int Foreign Key References [Tables](T_Id),
Menu_Id int Foreign Key References Menu(Menu_Id),
);


-- Shops db
create table Shops(
Shop_Id int primary key identity,
Shop_Number int,
Shop_Owner varchar(20),
Shop_Type varchar(20),
Shop_Products varchar(20),
);

-- others db
create table Feedback(
Fdbk_Id int primary key identity,
[User_Name] varchar(20),
[Message] varchar(50)
);

create table Users(
userid int primary key identity,
username varchar(20),
[password] varchar(20)
);


-- admin views

CREATE VIEW [dbo].[Shops_Details]
	AS SELECT * FROM [Shops]

CREATE VIEW [dbo].[Users_Details]
	AS SELECT * FROM [Users]
 
CREATE VIEW [dbo].[_Details]
	AS SELECT * FROM []

CREATE VIEW [dbo].[Seats_Details]
	AS SELECT * FROM [Seats]

CREATE VIEW [dbo].[Movies_Details]
	AS SELECT * FROM [Movies]

CREATE VIEW [dbo].[Tickets_Details]
	AS SELECT * FROM [Tickets]

CREATE VIEW [dbo].[Menu_Details]
	AS SELECT * FROM [Menu]

CREATE VIEW [dbo].[Tables_Details]
	AS SELECT * FROM [Tables]

CREATE VIEW [dbo].[Orders_Details]
	AS SELECT * FROM [Orders]



