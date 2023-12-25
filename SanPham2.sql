DROP TABLE Hang;
CREATE TABLE Hang (
	MaSoHang INT PRIMARY KEY,
	TenHang NVARCHAR(250),
	DiaChi NVARCHAR(300),
	DienThoai INT,
);

INSERT INTO Hang (MaSoHang, TenHang, DiaChi, DienThoai)
VALUES (123, 'Asus', 'USA', 983232);

DROP TABLE DanhSachSanPham;
CREATE TABLE DanhSachSanPham (
	SoThuTu INT PRIMARY KEY,
	TenHang NVARCHAR(250),
	MoTaHang NVARCHAR(MAX),
	DonVi NVARCHAR(100),
	Gia INT,
	SoLuongHienCo INT,
);

INSERT INTO DanhSachSanPham (SoThuTu, TenHang, MoTaHang, DonVi, Gia, SoLuongHienCo)
VALUES
		(1, 'Máy Tính T450', 'Máy nhập cũ', 'Chiếc', 1000, 10),
		(2, 'Điện Thoại Nokia5670', 'Điện thoại đang hot', 'Chiếc', 200, 200),
		(3, 'Máy In Samsung 450', 'Máy in đang loại bình', 'Chiếc', 100, 10),
		(4, 'Asus', 'Máy tính đang hot', 'Chiếc', 2000, 20);
--Hiển thị tất cả hãng sản xuất--
SELECT * FROM Hang;
--Hiển thị tất cả các sản phẩm--
SELECT * FROM DanhSachSanPham;
--Liệt kê danh sách hãng theo thứ thự ngược với alphabet của tên--
SELECT * FROM Hang
ORDER BY TenHang DESC;
--Liệt kê danh sách sản phẩm của cửa hàng theo thứ thự giá giảm dần--
SELECT * FROM DanhSachSanPham
ORDER BY Gia DESC;
--Hiển thị thông tin của hãng Asus--
SELECT * FROM Hang
WHERE TenHang = 'Asus';
--Liệt kê danh sách sản phẩm còn ít hơn 11 chiếc trong kho--
SELECT * FROM DanhSachSanPham
WHERE SoLuongHienCo < 11;
--Liệt kê danh sách sản phẩm của hãng Asus--
SELECT DanhSachSanPham.*
FROM DanhSachSanPham
JOIN Hang ON DanhSachSanPham.TenHang = Hang.TenHang
WHERE Hang.TenHang = 'Asus';
