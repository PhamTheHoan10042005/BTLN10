USE QLBANHANGTAISIEUTHI
CREATE TABLE KhachHang (
    KhachHangID INT PRIMARY KEY,
    TenKhachHang NVARCHAR(100),
    SoDienThoai NVARCHAR(15),
    Email VARCHAR(100),
    DiaChi NVARCHAR(200),
    LoaiKhachHang NVARCHAR(50) DEFAULT 'Thường'
);
CREATE TABLE SanPham (
    SanPhamID INT PRIMARY KEY,
    TenSanPham NVARCHAR(100),
    Gia DECIMAL(10, 2),
    LoaiSanPham NVARCHAR(100), 
    SoLuongTon INT,
    SoLuongTonToiThieu INT
);
CREATE TABLE HoaDon (
    HoaDonID INT PRIMARY KEY,
    KhachHangID INT,
    NgayMua DATETIME,
    TongTien DECIMAL(10, 2),
    FOREIGN KEY (KhachHangID) REFERENCES KhachHang(KhachHangID)
);
CREATE TABLE ChiTietHoaDon (
    HoaDonID INT,
    SanPhamID INT,
    SoLuong INT,
    GiaBan DECIMAL(10, 2),
    PRIMARY KEY (HoaDonID, SanPhamID),
    FOREIGN KEY (HoaDonID) REFERENCES HoaDon(HoaDonID),
    FOREIGN KEY (SanPhamID) REFERENCES SanPham(SanPhamID)
);
CREATE TABLE TheVIP (
    TheVIPID INT PRIMARY KEY,
    KhachHangID INT,
    MaThe VARCHAR(100),
    TietKiem DECIMAL(5, 2),
    SoLanSuDung INT, 
    NgayCapThe DATE,
    FOREIGN KEY (KhachHangID) REFERENCES KhachHang(KhachHangID)
);
CREATE TABLE PhieuChi (
    PhieuChiID INT PRIMARY KEY,
    HoaDonID INT,
    LyDo NVARCHAR(200),
    SoTien DECIMAL(10, 2),
    NgayChi DATETIME,
    FOREIGN KEY (HoaDonID) REFERENCES HoaDon(HoaDonID)
);
CREATE TABLE PhieuDoi (
    PhieuDoiID INT PRIMARY KEY,
    HoaDonID INT,
    SanPhamTraID INT,
    SanPhamNhanID INT,
    SoTienTra DECIMAL(10, 2),
    SoTienNhan DECIMAL(10, 2),
    SoTienChenhLech DECIMAL(10, 2),
    NgayDoi DATETIME,
    FOREIGN KEY (HoaDonID) REFERENCES HoaDon(HoaDonID),
    FOREIGN KEY (SanPhamTraID) REFERENCES SanPham(SanPhamID),
    FOREIGN KEY (SanPhamNhanID) REFERENCES SanPham(SanPhamID)
);
CREATE TABLE TonKho (
    SanPhamID INT,
    SoLuongTon INT,
    SoLuongTonToiThieu INT,
    PRIMARY KEY (SanPhamID),
    FOREIGN KEY (SanPhamID) REFERENCES SanPham(SanPhamID)
);
CREATE TABLE NhanVien (
    NhanVienID INT PRIMARY KEY,
    TenNhanVien NVARCHAR(100),
    ChucVu NVARCHAR(100),
    SoDienThoai VARCHAR(15)
);
