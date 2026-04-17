--CÁC CÂU TRUY VẤN VÀ LỆCH
--1: Tìm phòng trống
SELECT *
FROM PHONG
WHERE TrangThai = N'Trống';
--xem tất cả 
select *from ...
--2. JOIN (CÂU QUAN TRỌNG NHẤT)
🎯 Xem khách thuê phòng nào
SELECT 
    KHACH.TenKhach,
    PHONG.SoPhong
FROM HOPDONG
JOIN KHACH ON HOPDONG.CCCD = KHACH.CCCD
JOIN PHONG ON HOPDONG.SoPhong = PHONG.SoPhong;
--Tìm phòng chưa có hợp đồng
SELECT *
FROM PHONG
WHERE SoPhong NOT IN (
    SELECT SoPhong FROM HOPDONG
);
--Đếm số phòng đã thuê
SELECT COUNT(*) AS SoPhongDaThue
FROM PHONG
WHERE TrangThai = N'Đã thuê';
--Tìm khách theo tên
SELECT *
FROM KHACH
WHERE TenKhach LIKE N'%Nguyễn%';
--Hiển thị hóa đơn của từng khách
SELECT 
    KHACH.TenKhach,
    PHONG.SoPhong,
    HOADON.Thang,
    HOADON.Nam,
    (HOADON.SoDien * 3000 + HOADON.SoNuoc * 5000) AS TienDienNuoc
FROM HOPDONG
JOIN KHACH ON HOPDONG.CCCD = KHACH.CCCD
JOIN PHONG ON HOPDONG.SoPhong = PHONG.SoPhong
JOIN HOADON ON PHONG.SoPhong = HOADON.SoPhong;
--Khách thuê lâu nhất
SELECT TOP 1 *
FROM HOPDONG
ORDER BY NgayBatDau ASC;
--Phòng có tiền điện cao nhất
SELECT TOP 1 *
FROM HOADON
ORDER BY SoDien DESC;