--CẬP NHẬT THÔNG TIN GIA TIỀN
UPDATE HOADON
SET 
  GiaTienDien=CASE MaHoaDon
        WHEN 1 THEN '3500'
        WHEN 2 THEN '3500'
        WHEN 3 THEN '3500'
        WHEN 4 THEN '3500'
        WHEN 5 THEN '3500'
        WHEN 6 THEN '3500'
        WHEN 7 THEN '3500'
        WHEN 8 THEN '3500'
        WHEN 9 THEN '3500'
        WHEN 10 THEN '3500'
        WHEN 11 THEN '3500'
    END,
   GiaTienNuoc=CASE MaHoaDon
        WHEN 1 THEN '30'
        WHEN 2 THEN '30'
        WHEN 3 THEN '30'
        WHEN 4 THEN '30'
        WHEN 5 THEN '30'
        WHEN 6 THEN '30'
        WHEN 7 THEN '30'
        WHEN 8 THEN '30'
        WHEN 9 THEN '30'
        WHEN 10 THEN '30'
        WHEN 11 THEN '30'
    END
WHERE MaHoaDon BETWEEN 1 AND 11;