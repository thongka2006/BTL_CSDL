--cập nhật thời gian hopdong
UPDATE HOPDONG
SET 
    NgayBatDau = CASE MaKhach
        WHEN 1 THEN '2025-03-05'
        WHEN 2 THEN '2025-04-12'
        WHEN 3 THEN '2025-05-20'
        WHEN 4 THEN '2025-06-01'
        WHEN 5 THEN '2025-07-15'
        WHEN 6 THEN '2025-08-28'
        WHEN 7 THEN '2025-09-10'
        WHEN 8 THEN '2025-10-22'
        WHEN 9 THEN '2025-11-05'
        WHEN 10 THEN '2025-12-18'
        WHEN 11 THEN '2026-01-10'
    END,
    NgayKetThuc = CASE MaKhach
        WHEN 1 THEN '2026-01-05'
        WHEN 2 THEN '2026-02-12'
        WHEN 3 THEN '2026-03-20'
        WHEN 4 THEN '2026-04-01'
        WHEN 5 THEN '2026-05-15'
        WHEN 6 THEN '2026-06-28'
        WHEN 7 THEN '2026-07-10'
        WHEN 8 THEN '2026-08-22'
        WHEN 9 THEN '2026-09-05'
        WHEN 10 THEN '2026-10-18'
        WHEN 11 THEN '2026-11-10'
    END
WHERE MaKhach BETWEEN 1 AND 11;