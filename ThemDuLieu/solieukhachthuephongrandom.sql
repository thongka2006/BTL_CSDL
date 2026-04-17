WITH RandomPhong AS (
    SELECT 
        SoPhong,
        ROW_NUMBER() OVER (ORDER BY NEWID()) AS rn
    FROM PHONG
),
HD_Row AS (
    SELECT 
        *,
        ROW_NUMBER() OVER (ORDER BY MaKhach) AS rn
    FROM HOPDONG
)
UPDATE HD
SET HD.SoPhong = RP.SoPhong
FROM HD_Row HD
JOIN RandomPhong RP 
    ON HD.rn = RP.rn;--phòng khách thuê random 