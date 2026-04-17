--tính tiền tổng cả tiền phòng
SELECT 
    PHONG.SoPhong,
    PHONG.GiaPhong,
    HOADON.SoDien * 3000 AS TienDien,
    HOADON.SoNuoc * 5000 AS TienNuoc,
    (PHONG.GiaPhong 
     + HOADON.SoDien * 3000 
     + HOADON.SoNuoc * 5000) AS TongTien
FROM HOADON
JOIN PHONG ON HOADON.SoPhong = PHONG.SoPhong;