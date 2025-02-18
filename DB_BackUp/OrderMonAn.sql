CREATE DATABASE OrderMonAn

USE OrderMonAn
GO
CREATE TABLE [CHITIETHOADON](
	[idChiTietHoaDon] [int] IDENTITY(1,1) NOT NULL primary key ,
	[idHoaDon] [int] NULL,
	[idMonAn] [int] NULL,
	[soluong] [int] NOT NULL,
	[dongia] [float] NOT NULL,
	[thanhtien] [float] NOT NULL,
	[status] [int] NOT NULL,
	)


GO

CREATE TABLE [GIOHANG](
	[idGioHang] [int] IDENTITY(1,1) NOT NULL primary key ,
	[idKH] [int] NULL,
	[idMonAn] [int] NULL,
	[soluong] [int] NOT NULL,
	[dongia] [float] NOT NULL,
	[thanhtien] [float] NOT NULL,
	[status] [int] NOT NULL,
	)
GO

CREATE TABLE [HOADON](
	[idHoaDon] [int] IDENTITY(1,1) NOT NULL primary key ,
	[idKH] [int] NULL,
	[tongSoluong] [int] NOT NULL,
	[thanhtien] [float] NOT NULL,
	[status] [int] NOT NULL,
	[ngayLapHoaDon] [date] NULL,
)
GO

CREATE TABLE [MONAN](
	[idMonAn] [int] IDENTITY(1,1) NOT NULL primary key ,
	[tenMonAn] [nvarchar](150) NOT NULL,
	[soluong] [int] NOT NULL,
	[dongia] [float] NOT NULL,
	[linkImg] [text] NULL,
	[status] [int] NOT NULL,
	[mota] [nvarchar](500) NULL,
)
GO

CREATE TABLE [NGUOIDUNG](
	[idKH] [int] IDENTITY(1,1) NOT NULL primary key ,
	[tenKH] [nvarchar](150) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[password] [varchar](500) NOT NULL,
	[sdt] [varchar](20) NOT NULL,
	[diachi] [nvarchar](250) NOT NULL,
	[phanquyen] [int] NOT NULL,
	[status] [int] NOT NULL,
)
GO

SET IDENTITY_INSERT [MONAN] ON 

INSERT [MONAN] ([idMonAn], [tenMonAn], [soluong], [dongia], [linkImg], [status], [mota]) VALUES (1, N'Bánh Hamburger', 10, 20000, N'images/burger_slide.png', 1, N'Với vỏ bánh thơm mềm kết hợp cùng nhân thịt đậm đà và nước sốt Mayonnaise béo ngậy, loại bánh này luôn “gây nghiện” cho thực khách ngay lần thưởng thức đầu tiên.')
INSERT [MONAN] ([idMonAn], [tenMonAn], [soluong], [dongia], [linkImg], [status], [mota]) VALUES (2, N'Bánh PIZAA Phô mai', 10, 120000, N'https://cdn.daylambanh.edu.vn/wp-content/uploads/2017/07/cach-lam-banh-pizza-pho-mai-600x364.jpg', 1, N'Chiếc pizza đặc trưng cổ điển cho bất cứ tín đồ pizza nào. 

Tầng trên là lớp phô mai vàng óng thơm dẻo như mời gọi, tầng dưới là lớp sốt cà chua trung hòa với vị béo của phô mai Mozarella giúp chiếc pizza không bị ngấy.')
INSERT [MONAN] ([idMonAn], [tenMonAn], [soluong], [dongia], [linkImg], [status], [mota]) VALUES (3, N'Bánh PIZZA BÒ Ý ĂN LÀ GHIỀN', 10, 200000, N'https://cdn.daylambanh.edu.vn/wp-content/uploads/2017/07/cach-lam-banh-pizza-bo-600x375.jpg', 1, N'Bánh PIZZA với thịt bò chuẩn KOBE Nhật Bản')
INSERT [MONAN] ([idMonAn], [tenMonAn], [soluong], [dongia], [linkImg], [status], [mota]) VALUES (4, N'Bánh PIZZA Chay', 10, 150000, N'https://cdn.daylambanh.edu.vn/wp-content/uploads/2017/08/cach-lam-banh-pizza-chay-600x461.jpg', 1, N'Hương vị cà chua kết hợp các loại rau củ, nấm, phô mai chấm tương ớt mang đến hương vị đặc biệt')
INSERT [MONAN] ([idMonAn], [tenMonAn], [soluong], [dongia], [linkImg], [status], [mota]) VALUES (10, N'Bánh PIZZA Xúc xích siêu ngon', 20, 200000, N'https://cdn.huongnghiepaau.com/wp-content/uploads/2019/04/banh-pizza-thom-ngon.jpg', 1, N'Phần vỏ bánh giòn, độ dày vừa đủ sẽ không gây cảm giác ngán ngẩm bởi quá nhiều bột, ngoài ra nhân bánh phô mai béo mịn, tan chảy hòa quyện với phần xốt cà chua sẽ tạo nên sự hài hòa, lôi cuốn. Biến tấu thêm hương vị với phần topping xúc xích sẽ trở thành lựa chọn lý tưởng nhất cho cả gia đình')
INSERT [MONAN] ([idMonAn], [tenMonAn], [soluong], [dongia], [linkImg], [status], [mota]) VALUES (11, N'Bánh PIZZA hải sản', 10, 200000, N'https://cdn.huongnghiepaau.com/wp-content/uploads/2019/01/lam-banh-pizza-banh-chao-600x401.jpg', 1, N'Bánh pizza hải sản ngon được chế biến từ nước, bột mỳ và nấm men, sau khi đã được ủ ít nhất 24 tiếng đồng hồ và nhào nặn thành loại bánh có hình dạng tròn và dẹt thì người ta cho vào lò nướng chín.')
SET IDENTITY_INSERT [dbo].[MONAN] OFF
SET IDENTITY_INSERT [dbo].[NGUOIDUNG] ON 

INSERT [NGUOIDUNG] ([idKH], [tenKH], [username], [password], [sdt], [diachi], [phanquyen], [status]) VALUES (1, N'Nguyễn Van A', N'nguyena', N'1234', N'0132652982', N'Quận 12', 1, 1)
INSERT [NGUOIDUNG] ([idKH], [tenKH], [username], [password], [sdt], [diachi], [phanquyen], [status]) VALUES (2, N'Nguyễn Van B', N'nguyenb', N'1234', N'0123421695', N'Quận 1', 2, 1)
INSERT [NGUOIDUNG] ([idKH], [tenKH], [username], [password], [sdt], [diachi], [phanquyen], [status]) VALUES (1007, N'Nguyễn Tuấn Phúc', N'phuc1', N'1234', N'0388855555', N'Thủ Đức', 2, 1)
INSERT [NGUOIDUNG] ([idKH], [tenKH], [username], [password], [sdt], [diachi], [phanquyen], [status]) VALUES (1008, N'Nguyễn Tuấn Vũ', N'nguyenc', N'1234', N'0386232296', N'Quận 12, TP HCM', 2, 1)
SET IDENTITY_INSERT [dbo].[NGUOIDUNG] OFF
ALTER TABLE [CHITIETHOADON] ADD  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [GIOHANG] ADD  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [HOADON] ADD  DEFAULT ((0)) FOR [tongSoluong]
GO
ALTER TABLE [HOADON] ADD  DEFAULT ((0)) FOR [thanhtien]
GO
ALTER TABLE [HOADON] ADD  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [HOADON] ADD  DEFAULT (getdate()) FOR [ngayLapHoaDon]
GO
ALTER TABLE [MONAN] ADD  DEFAULT ((0)) FOR [soluong]
GO
ALTER TABLE [MONAN] ADD  DEFAULT ((0)) FOR [dongia]
GO
ALTER TABLE [MONAN] ADD  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [MONAN] ADD  DEFAULT (NULL) FOR [mota]
GO
ALTER TABLE [NGUOIDUNG] ADD  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [CHITIETHOADON]  WITH CHECK ADD FOREIGN KEY([idHoaDon])
REFERENCES [HOADON] ([idHoaDon])
GO
ALTER TABLE [CHITIETHOADON]  WITH CHECK ADD FOREIGN KEY([idMonAn])
REFERENCES [MONAN] ([idMonAn])
GO
ALTER TABLE [GIOHANG]  WITH CHECK ADD FOREIGN KEY([idKH])
REFERENCES [NGUOIDUNG] ([idKH])
GO
ALTER TABLE [GIOHANG]  WITH CHECK ADD FOREIGN KEY([idMonAn])
REFERENCES [MONAN] ([idMonAn])
GO
ALTER TABLE [HOADON]  WITH CHECK ADD FOREIGN KEY([idKH])
REFERENCES [NGUOIDUNG] ([idKH])
GO