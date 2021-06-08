CREATE DATABASE FlightManager

CREATE TABLE QUANLIKHACHHANG
(
	HOTENKHACHHANG NVARCHAR(30),
	MAKHACHHANG NVARCHAR(10) PRIMARY KEY,
	SDT NVARCHAR(10),
	DIACHI NVARCHAR(50),
	CMND NVARCHAR(20)
)

CREATE TABLE NHANVIEN
(
	HOTENNHANVIEN NVARCHAR(30),
	MANHANVIEN NVARCHAR(10) PRIMARY KEY,
	SDT NVARCHAR(10),
	DIACHI NVARCHAR(50),
	CMND NVARCHAR(20),
	CHUCVU NVARCHAR(20)
)
CREATE TABLE DUONGBAY
(
	MADUONGBAY NVARCHAR(10),
	VITRI NVARCHAR(50),
	CHIEUDAI NVARCHAR(10),
	CHIEURONG NVARCHAR(10),
	TINHTRANG NVARCHAR(50)
)

CREATE TABLE MAYBAY 
(
	MAMAYBAY NVARCHAR(10),
	TENMAYBAY NVARCHAR(50),
	HANGSANXUAT NVARCHAR(30),
	KICHTHUOC NVARCHAR(50),
	SOCHO INT
)

CREATE TABLE VEMAYBAY
(
	MAVE NVARCHAR(10) PRIMARY KEY,
	MADUONGBAY NVARCHAR(10) FOREIGN KEY REFERENCES DUONGBAY (MADUONGBAY) ,
	MAMAYBAY NVARCHAR(10),
	NGAYDEN DATE,
	GHICHU NVARCHAR(50),
	NGAYDI DATE,
	GIOBAY TIME
)

CREATE TABLE HOADON 
(
	MAHOADON NVARCHAR(10),
	MAKHACHHANG NVARCHAR(10),
	MANHANVIEN NVARCHAR(10),
)