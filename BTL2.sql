USE QLBANHANGTAISIEUTHI
INSERT INTO KhachHang (KhachHangID, TenKhachHang, SoDienThoai, Email, DiaChi, LoaiKhachHang)
VALUES
(1, 'Nguyen Minh Tu', '0912345678', 'nguyenminhtu@example.com', 'Hanoi', 'VIP'),
(2, 'Le Thi Lan', '0987654321', 'lethilan@example.com', 'Ho Chi Minh', 'Thường'),
(3, 'Tran Thanh Hoa', '0978654321', 'tranthanhhoa@example.com', 'Da Nang', 'VIP'),
(4, 'Nguyen Quang Hieu', '0936547890', 'nguyenquanghieu@example.com', 'Hue', 'Thường'),
(5, 'Pham Quyen', '0901234567', 'phamquyen@example.com', 'Can Tho', 'Thường'),
(6, 'Hoang Minh Thu', '0977654321', 'hoangminhthu@example.com', 'Hai Phong', 'VIP'),
(7, 'Bui Thanh Son', '0912345679', 'bui.thanhson@example.com', 'Nha Trang', 'Thường');

INSERT INTO SanPham (SanPhamID, TenSanPham, Gia, LoaiSanPham, SoLuongTon, SoLuongTonToiThieu)
VALUES
(1, 'Bánh Kẹo', 25.000, 'Tiêu dùng', 200, 50),
(2, 'Sữa Tươi', 30.000, 'Thực phẩm', 100, 30),
(3, 'Áo Thun', 150.000, 'Thời trang', 50, 10),
(4, 'Quần Jean', 200.000, 'Thời trang', 70, 20),
(5, 'Nước Ngọt', 15.000, 'Thực phẩm', 500, 100),
(6, 'Chè Khúc Bạch', 50.000, 'Tiêu dùng', 120, 20),
(7, 'Giày Thể Thao', 300.000, 'Thời trang', 80, 20);

INSERT INTO HoaDon (HoaDonID, KhachHangID, NgayMua, TongTien)
VALUES
(1, 1, '2025-03-01 10:30:00', 450.000),
(2, 2, '2025-03-02 14:45:00', 500.000),
(3, 3, '2025-03-02 16:00:00', 300.000),
(4, 4, '2025-03-03 09:20:00', 600.000),
(5, 5, '2025-03-03 12:15:00', 700.000),
(6, 6, '2025-03-04 11:00:00', 550.000),
(7, 7, '2025-03-05 10:05:00', 400.000);

INSERT INTO ChiTietHoaDon (HoaDonID, SanPhamID, SoLuong, GiaBan)
VALUES
(1, 1, 5, 25.000),
(1, 2, 3, 30.000),
(2, 3, 2, 150.000),
(2, 4, 1, 200.000),
(3, 5, 10, 15.000),
(3, 6, 1, 50.000),
(4, 7, 2, 300.000),
(5, 2, 5, 30.000),
(6, 1, 2, 25.000),
(7, 4, 3, 200.000);

INSERT INTO TheVIP (TheVIPID, KhachHangID, MaThe, TietKiem, SoLanSuDung, NgayCapThe)
VALUES
(1, 1, 'VIP001', 10.00, 5, '2025-03-01'),
(2, 3, 'VIP002', 15.00, 3, '2025-03-02'),
(3, 6, 'VIP003', 20.00, 7, '2025-03-04');

INSERT INTO PhieuChi (PhieuChiID, HoaDonID, LyDo, SoTien, NgayChi)
VALUES
(1, 1, 'Trả lại sản phẩm', 100.000, '2025-03-02 09:00:00'),
(2, 2, 'Trả lại sản phẩm', 50.000, '2025-03-03 15:00:00');

INSERT INTO PhieuDoi (PhieuDoiID, HoaDonID, SanPhamTraID, SanPhamNhanID, SoTienTra, SoTienNhan, SoTienChenhLech, NgayDoi)
VALUES
(1, 3, 5, 1, 30.000, 25.000, -5.000, '2025-03-04 14:00:00'),
(2, 4, 7, 3, 300.000, 150.000, -150.000, '2025-03-05 16:00:00');

INSERT INTO TonKho (SanPhamID, SoLuongTon, SoLuongTonToiThieu)
VALUES
(1, 200, 50),
(2, 100, 30),
(3, 50, 10),
(4, 70, 20),
(5, 500, 100),
(6, 120, 20),
(7, 80, 20);

INSERT INTO NhanVien (NhanVienID, TenNhanVien, ChucVu, SoDienThoai)
VALUES
(1, 'Pham Minh Tu', 'Nhân viên bán hàng', '0902345678'),
(2, 'Nguyen Thanh Hoa', 'Nhân viên kiểm kho', '0912345679'),
(3, 'Tran Minh Thao', 'Nhân viên bán hàng', '0923456780'),
(4, 'Le Thanh Tuan', 'Nhân viên bán hàng', '0934567890'),
(5, 'Bui Minh Hieu', 'Nhân viên kiểm kho', '0945678901'),
(6, 'Hoang Thi Lan', 'Nhân viên bán hàng', '0956789012'),
(7, 'Nguyen Thi Bich', 'Nhân viên bán hàng', '0967890123');
