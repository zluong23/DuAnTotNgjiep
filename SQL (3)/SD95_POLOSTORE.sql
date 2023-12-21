USE [master]

CREATE DATABASE [SD95_POLOSTORE]
GO

USE [SD95_POLOSTORE]
GO


---- Địa Chỉ ----
CREATE TABLE Address(
id INT IDENTITY(1,1) PRIMARY KEY,
city NVARCHAR(MAX),
district NVARCHAR(MAX),
ward NVARCHAR(MAX),
fullAddress NVARCHAR(MAX),
status INT,
createDate DATE,
updateDate DATE
)


----- Chức vụ -----

CREATE TABLE Role(
id INT IDENTITY(1,1) PRIMARY KEY,
name NVARCHAR(MAX),
status INT,
createDate DATE,
updateDate DATE
)
---- Người dùng ----
CREATE TABLE Customers(
id INT IDENTITY(1,1) PRIMARY KEY,
name NVARCHAR(MAX),
email NVARCHAR(MAX),
phone NVARCHAR(10),
avatar NVARCHAR(MAX),
password NVARCHAR(MAX),
status INT,
createDate DATE,
updateDate DATE,
)
-----Dia chi khach hang-----

CREATE TABLE CustomerAddress(
id INT IDENTITY(1,1) PRIMARY KEY,
customerId int REFERENCES Customers(id),
addressId INT REFERENCES Address(id)
)


---- Admins -----
CREATE TABLE Admins(
id INT IDENTITY(1,1) PRIMARY KEY,
name NVARCHAR(MAX),
email NVARCHAR(MAX),
phone NVARCHAR(10),
avatar NVARCHAR(MAX),
address NVARCHAR(MAX),
password NVARCHAR(MAX),
status INT,
createDate DATE,
updateDate DATE,
roleId INT REFERENCES Role(id),
)

---- Màu sắc ---
CREATE TABLE Colors(
id INT IDENTITY(1,1) PRIMARY KEY,
name NVARCHAR(MAX),
status INT,
description NVARCHAR(MAX),
createDate DATE,
updateDate DATE
)

----- Kích Thước ----

CREATE TABLE Sizes(
id INT IDENTITY(1,1) PRIMARY KEY,
name NVARCHAR(MAX),
status INT,
shirtlength INT,
shirtwidth INT,
sleevelenght INT, 
shoulderlength INT,
description NVARCHAR(MAX),
createDate DATE,
updateDate DATE
)

----- Loại sản phẩm ----

CREATE TABLE Categories(
id INT IDENTITY(1,1) PRIMARY KEY,
name NVARCHAR(MAX),
status INT,
description NVARCHAR(MAX),
createDate DATE,
updateDate DATE
)

----- Thương hiệu -----

CREATE TABLE Brands(
id INT IDENTITY(1,1) PRIMARY KEY,
name NVARCHAR(MAX),
status INT,
description NVARCHAR(MAX),
createDate DATE,
updateDate DATE
)

----- Chất liệu -----

CREATE TABLE Materials(
id INT IDENTITY(1,1) PRIMARY KEY,
name NVARCHAR(MAX),
status INT,
description NVARCHAR(MAX),
createDate DATE,
updateDate DATE
)

---- Giảm giá ----

CREATE TABLE Discount(
id INT IDENTITY(1,1) PRIMARY KEY,
name NVARCHAR(MAX),
discount float,
status INT,
description NVARCHAR(MAX),
startDate DATE,
endDate DATE
)

CREATE TABLE Products(
id INT IDENTITY(1,1) PRIMARY KEY,
name NVARCHAR(MAX),
status INT,
description NVARCHAR(MAX),
createDate DATE,
updateDate DATE,
categoryId INT REFERENCES Categories(id),
brandId INT REFERENCES Brands(id),
materialId INT REFERENCES Materials(id),
discountId INT REFERENCES Discount(id)
)



CREATE TABLE ProductDetail(
id INT IDENTITY(1,1) PRIMARY KEY,
quantity INT,
cost FLOAT,
price FLOAT,
weight FLOAT,
status INT,
createDate DATE,
updateDate DATE,
productId INT REFERENCES Products(id),
sizeId INT REFERENCES Sizes(id),
colorId INT REFERENCES Colors(id)

)

---- Ảnh ----
CREATE TABLE Images(
id INT IDENTITY(1,1) PRIMARY KEY,
name NVARCHAR(MAX),
url_image NVARCHAR(MAX),
status INT,
createDate DATE,
updateDate DATE,
productDetailId INT REFERENCES ProductDetail(id)
)

---- Giao dịch ----

CREATE TABLE Transactions(
id INT IDENTITY(1,1) PRIMARY KEY,
name NVARCHAR(MAX),
status INT,
description NVARCHAR(MAX),
createDate DATE,
updateDate DATE
)

----- Hóa Đơn -----

CREATE TABLE Orders(
id INT IDENTITY(1,1) PRIMARY KEY,
phone NVARCHAR(10),
username NVARCHAR(MAX),
totalPrice FLOAT,
shipCost FLOAT,
weight Float,
note NVARCHAR(MAX),
shopping NVARCHAR(MAX),
address nvarchar(max),
status INT,
confirmDate DATE,
shipDate DATE,
successDate DATE,
createDate DATE,
updateDate DATE,
customerId int REFERENCES Customers(id),
adminId int REFERENCES Admins(id),
transactionId INT REFERENCES Transactions(id)
)

---- Hóa đơn chi tiết ----

CREATE TABLE OrderDetail(
id INT IDENTITY(1,1) PRIMARY KEY,
quantity INT,
price float,
status INT,
createDate DATE,
updateDate DATE,
orderId INT REFERENCES Orders(id),
productDetailId INT REFERENCES ProductDetail(id)
)


--- giỏ hàng ----
CREATE TABLE Cart(
id INT IDENTITY(1,1) PRIMARY KEY,
status INT,
createDate DATE,
updateDate DATE,
customerId int REFERENCES Customers(id)
)

--- giỏ hàng chi tiết  ----
CREATE TABLE CartDetail(
id INT IDENTITY(1,1) PRIMARY KEY,
quantity INT,
price float,
status INT,
createDate DATE,
updateDate DATE,
cartId INT REFERENCES Cart(id),
productDetailId INT REFERENCES ProductDetail(id)
)

--- Đánh giá ---- 
CREATE TABLE Ratings(
id INT IDENTITY(1,1) PRIMARY KEY,
review NVARCHAR(MAX),
star INT,
status INT,
createDate DATE,
updateDate DATE,
customerId int REFERENCES Customers(id),
productDetailId INT REFERENCES ProductDetail(id)
)

----- Thích bài đánh giá ----
CREATE TABLE LikeRatings(
id INT IDENTITY(1,1) PRIMARY KEY,
customerId int REFERENCES Customers(id),
RateId INT REFERENCES Ratings(id),
likecount INT,
dislikecount INT

)