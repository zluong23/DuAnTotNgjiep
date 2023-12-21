	insert into Address(city,district,ward,fullAddress,status,createDate,updateDate)
	values(N'Hà Nội',N'Nam Từ Liêm',N'Cầu Diễn',N'111 Nam Từ Liêm,Cầu Diễn,Hà Nội',1,GETDATE(),GETDATE()),
	(N'Hải Phòng',N'Ngô Quyền',N'Lê Lợi',N'57 Lê Lợi, Ngô Quyền, Hải Phòng',1,GETDATE(),GETDATE()),
	(N'Nam Định',N'Giao Thủy',N'Quất Lâm',N'123 Quất Lâm, Giao Thủy, Nam Định',1,GETDATE(),GETDATE()),
	(N'Hà Nam',N'Thanh Liêm',N'Liêm Sơn',N'Thôn Ninh Trung, xã Liêm Sơn, huyện Thanh Liêm, tỉnh Hà Nam ',1,GETDATE(),GETDATE()),
	(N'Hà Nội',N'Ba Đình',N'Kim Mã',N'22 Kim Mã,Ba Đình Hà,Nội',1,GETDATE(),GETDATE()),
	(N'Đà Nẵng',N'Sơn Trà',N'Võ Nguyên Giáp',N'200 Võ Nguyên Giáp, Quận Sơn Trà, Đà Nẵng.',1,GETDATE(),GETDATE()),
	(N'Đà Lạt',N'Phường 10',N'Hoàng Hoa Thám',N'89 Hoàng Hoa Thám, p10, Đà Lạt',1,GETDATE(),GETDATE()),
	(N'Lào Cai',N'Spa',N'Phố Cầu Mây,',N'Phố Cầu Mây, Sapa, Lào Cai.',1,GETDATE(),GETDATE()),
	(N'Bình Dương',N'Thủ Dầu Một',N'Trần Bình Trọng',N'Trần Bình Trọng, Thủ Dầu Một, Bình Dương',1,GETDATE(),GETDATE()),
	(N'Thanh Hóa',N'Lam Sơn',N'Nhà Thờ',N'số 46 Nhà Thờ, phường Lam Sơn, TP. Thanh Hóa',1,GETDATE(),GETDATE())

	insert into Role(name,status,createDate,updateDate)
	values(N'Chủ cửa hàng',1,GETDATE(),GETDATE()),
	(N'Nhân Viên Bán Hàng',1,GETDATE(),GETDATE()),
	(N'Nhân Viên Vệ Sinh',1,GETDATE(),GETDATE())

	INSERT INTO Customers (name, email, phone, avatar, password, status, createDate, updateDate)
	values(N'Phạm Quang Núi','huongnui003@gmail.com','0831321311','https://firebasestorage.googleapis.com/v0/b/sd-95-polostore.appspot.com/o/customer%2Farno-rosenfeld-forward-avatar-768x826.jpg?alt=media&token=fe9b6bf9-8742-4884-ba56-193221377940','huongnui03',1,GETDATE(),GETDATE()),
	(N'Nguyễn Văn A','nguyenvanA123@gmail.com','0831321312','https://firebasestorage.googleapis.com/v0/b/sd-95-polostore.appspot.com/o/customer%2Fdung-ct-la-ai-thong-tin-tieu-su-streamer-noi-tieng-1ab6dd82.jpeg?alt=media&token=0d4a9a8d-07ea-4feb-b8f4-9886b9ee2709','a123',1,GETDATE(),GETDATE()),
	(N'Phạm Quang B','phamvanb03@gmail.com','0831321313','https://firebasestorage.googleapis.com/v0/b/sd-95-polostore.appspot.com/o/customer%2Fth%20(1).jpg?alt=media&token=95a33755-7bb7-44c3-9572-db2c21cb4ff4','b123',1,GETDATE(),GETDATE()),
	(N'Trần Văn C','tranvanc2003@gmail.com','0831321314','https://firebasestorage.googleapis.com/v0/b/sd-95-polostore.appspot.com/o/customer%2Fth.jpg?alt=media&token=dbfbcc36-c8b5-43a1-9b2e-50f48591acaa','c123',1,GETDATE(),GETDATE()),
	(N'Trần Văn D','tuilad@gmail.com','0831321315','https://firebasestorage.googleapis.com/v0/b/sd-95-polostore.appspot.com/o/customer%2FDSC05252_copy.jpg?alt=media&token=c7043d09-45a7-45a1-bf30-b96e39925476','d123',1,GETDATE(),GETDATE())

	insert into CustomerAddress(customerId,addressId)
	values(1,1),
	(1,2),
	(1,3),
	(2,1),
	(3,1)


	insert into Admins(name,email,phone,avatar,address,password,status,createDate,updateDate,roleId)
	values(N'Nguyễn Thành Hưng','hungntph21758@fpt.edu.vn','0353895062','img.png',N'Nam Định','hung123',1,GETDATE(),GETDATE(),1),
	(N'Phạm Quang Hướng','huongpqph20593@fpt.edu.vn','0856572786','img.png',N'Nam Định','huong123',1,GETDATE(),GETDATE(),3),
	(N'Bùi Thị Thu Phương','phuongbttph20543@fpt.edu.vn','0947614693','img.png',N'Hòa Bình','phuong123',1,GETDATE(),GETDATE(),2),
	(N'Phạm Văn Lương','luongpvph27222@fpt.edu.vn','0397125531','img.png',N'Nam Định','luong123',1,GETDATE(),GETDATE(),2)

	INSERT INTO Colors (name, status, description, createDate,updateDate)
	VALUES 
	  (N'Đỏ', 1, N'Màu đỏ', GETDATE(), GETDATE()),
	  (N'Xanh', 1, N'Màu xanh', GETDATE(), GETDATE()),
	  (N'Vàng', 1, N'Màu vàng', GETDATE(), GETDATE()),
	  (N'Tím', 1, N'Màu tím', GETDATE(), GETDATE()),
	  (N'Hồng', 1, N'Màu hồng', GETDATE(), GETDATE()),
	  (N'Da cam', 1, N'Màu da cam', GETDATE(), GETDATE()),
	  (N'Đen', 1, N'Màu đen', GETDATE(), GETDATE()),
	  (N'Trắng', 1, N'Màu trắng', GETDATE(), GETDATE()),
	  (N'Nâu', 1, N'Màu nâu', GETDATE(), GETDATE())



	select * from Role
	select * from Admins

	select * from Colors

	INSERT INTO Sizes (name, status, description,shirtlength,shirtwidth,sleevelenght,shoulderlength, createDate,updateDate)
	VALUES 
	  (N'S', 1, N'Size nhỏ',68,48,20,40, GETDATE(), GETDATE()),
	  (N'M', 1, N'Size trung bình',70,50,21,42, GETDATE(), GETDATE()),
	  (N'L', 1, N'Size lớn',72,52,22,44, GETDATE(), GETDATE()),
	  (N'XL', 1, N'Size rất lớn',74,54,23,46, GETDATE(), GETDATE()),
	  (N'XXL', 1, N'Size siêu lớn',76,56,24,48, GETDATE(), GETDATE()),
	  (N'XXXL', 1, N'Size cực lớn',78,58,25,50 ,GETDATE(), GETDATE())

	  INSERT INTO Categories (name, status, description, createDate,updateDate)
	VALUES 
	  (N'Áo Polo basic', 1, N'Áo Polo cơ bản', GETDATE(), GETDATE()),
	  (N'Áo Polo striped', 1, N'Áo Polo sọc', GETDATE(), GETDATE()),
	  (N'Áo Polo printed', 1, N'Áo Polo in họa tiết', GETDATE(), GETDATE()),
	  (N'Áo Polo long sleeve', 1, N'Áo Polo tay dài', GETDATE(), GETDATE()),
	  (N'Áo Polo slim fit', 1, N'Áo Polo cắt ôm', GETDATE(), GETDATE()),
	  (N'Áo Polo color-block', 1, N'Áo Polo đồng màu', GETDATE(), GETDATE()),
	  (N'Áo Polo embroidered', 1, N'Áo Polo thêu hoa văn', GETDATE(), GETDATE()),
	  (N'Áo Polo vintage', 1, N'Áo Polo kiểu cổ điển', GETDATE(), GETDATE())

	  INSERT INTO Brands (name, status, description, createDate,updateDate)
	VALUES 
	  ('Ralph Lauren', 1, 'Thương hiệu Ralph Lauren', GETDATE(), GETDATE()),
	  ('Lacoste', 1, 'Thương hiệu Lacoste', GETDATE(), GETDATE()),
	  ('Tommy Hilfiger', 1, 'Thương hiệu Tommy Hilfiger', GETDATE(), GETDATE()),
	  ('Polo Ralph Lauren', 1, 'Thương hiệu Polo Ralph Lauren', GETDATE(), GETDATE()),
	  ('Fred Perry', 1, 'Thương hiệu Fred Perry', GETDATE(), GETDATE()),
	  ('Hugo Boss', 1, 'Thương hiệu Hugo Boss', GETDATE(), GETDATE()),
	  ('Calvin Klein', 1, 'Thương hiệu Calvin Klein', GETDATE(), GETDATE()),
	  ('Armani Exchange', 1, 'Thương hiệu Armani Exchange', GETDATE(), GETDATE())
  

	  INSERT INTO Materials (name, status, description, createDate,updateDate)
	VALUES 
	  ('Cotton', 1, '100% cotton fabric', GETDATE(), GETDATE()),
	  ('Polyester', 1, 'Polyester blend fabric', GETDATE(), GETDATE()),
	  ('Linen', 1, 'Linen fabric', GETDATE(), GETDATE()),
	  ('Silk', 1, 'Silk fabric', GETDATE(), GETDATE()),
	  ('Wool', 1, 'Wool blend fabric', GETDATE(), GETDATE()),
	  ('Cashmere', 1, 'Cashmere fabric', GETDATE(), GETDATE()),
	  ('Rayon', 1, 'Rayon blend fabric', GETDATE(), GETDATE()),
	  ('Nylon', 1, 'Nylon fabric', GETDATE(), GETDATE())
  

	  INSERT INTO Materials (name, status, description, createDate,updateDate)
	VALUES 
	  (N'Cotton', 1, N'Vải cotton 100%', GETDATE(), GETDATE()),
	  (N'Polyester', 1, N'Vải polyester', GETDATE(), GETDATE()),
	  (N'Linen', 1, N'Vải linen', GETDATE(), GETDATE()),
	  (N'Silk', 1, N'Vải lụa', GETDATE(), GETDATE()),
	  (N'Wool', 1, N'Vải len', GETDATE(), GETDATE()),
	  (N'Cashmere', 1, N'Vải cashmere', GETDATE(), GETDATE())

	  INSERT INTO Discount (name, discount, status, description, startDate, endDate)
	VALUES 
	(N'Không có khuyến mãi', null, 1, N'Không có khuyến mãi', null, null),
	  (N'Giảm giá Mùa hè', 0.2, 1, N'Giảm giá 20% cho mùa hè', '2023-06-01', '2023-08-31'),
	  (N'Khuyến mãi Black Friday', 0.3, 1, N'Giảm giá 30% trong Black Friday', '2023-11-24', '2023-11-26'),
	  (N'Ưu đãi Đặc biệt', 0.15, 1, N'Ưu đãi giảm giá đặc biệt', '2023-09-01', '2023-09-30')

	  insert into Products( name,status,description,createDate,updateDate,categoryId,materialId,brandId,discountId)
	  values(N'Polo thể thao Cleandye',1,N'Áo Cleandye Thể Thảo nguyên chất',GETDATE(),GETDATE(),1,1,1,1)

	  insert into ProductDetail(quantity,cost,price,weight,status,createDate,UpdateDate,productId,sizeId,colorId)
	  values(100,20000,30000,100,1,GETDATE(),GETDATE(),1,1,1),
	  (100,20000,30000,100,1,GETDATE(),GETDATE(),1,2,1),
		(100,20000,30000,100,1,GETDATE(),GETDATE(),1,3,1),
		 (100,20000,30000,100,1,GETDATE(),GETDATE(),1,4,1),
		  (100,20000,30000,100,1,GETDATE(),GETDATE(),1,1,2),
		   (100,20000,30000,100,1,GETDATE(),GETDATE(),1,3,2)

		  insert into Images(name,url_image,status,createDate,updateDate,productDetailId)
		  values(N'https://firebasestorage.googleapis.com/v0/b/sd-95-polostore.appspot.com/o/product%2Fnavytruoc_33.jpg?alt=media&token=24ad92dd-0310-4921-be55-4f6410e3d0f2','1',1,GETDATE(),GETDATE(),1),
		  (N'https://firebasestorage.googleapis.com/v0/b/sd-95-polostore.appspot.com/o/product%2Fthumb-polo-navy-v2.jpg?alt=media&token=6118f6f5-bff2-411f-a3d9-9a0897bd6856','2',1,GETDATE(),GETDATE(),1),
	  		  (N'https://firebasestorage.googleapis.com/v0/b/sd-95-polostore.appspot.com/o/product%2Fpolo_recy_navy_fix.jpg?alt=media&token=746361f6-5087-4063-b0a5-871da98779b2','3',1,GETDATE(),GETDATE(),1),
		  	  		  (N'https://firebasestorage.googleapis.com/v0/b/sd-95-polostore.appspot.com/o/product%2Fpolo_recy_navy_fix.jpg?alt=media&token=746361f6-5087-4063-b0a5-871da98779b2','4',1,GETDATE(),GETDATE(),1)

					insert into Transactions(name,status,description)
					values (N'Thanh toán khi nhận hàng',1,N'Chưa thanh toán'),
					 (N'Thanh toán bằng VNPAY',1,N'Đã thanh toán'),
					 (N'Thanh toán tại quầy',1,N'Đã thanh toán'),
					 (N'Đã thanh toán',1,N'Đã thanh toán')