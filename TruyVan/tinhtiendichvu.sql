--tính tiền trựuc tiếp
SELECT 
    SoPhong,
    SoDien * 3000 AS TienDien,
    SoNuoc * 5000 AS TienNuoc,
    (SoDien * 3000 + SoNuoc * 5000) AS TongTien
FROM HOADON;