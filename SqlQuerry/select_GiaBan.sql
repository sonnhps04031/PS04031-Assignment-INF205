--Cách tính:
--[Giá bán]={[Số lượng còn]*[Lãi+giá cũ]+[số lượng nhập thêm]*[Lãi+giá mới]} / [Tổng số lượng còn và nhập thêm]

CREATE VIEW v_GiaBan
AS
SELECT DISTINCT(tblMatHang.TenMatH) [Tên mặt hàng],tblMatHang.SoLuong [Số lượng tồn],tblMatHang.DonGia [Đơn giá],ROUND((((tblMatHang.SoLuong*(tblMatHang.DonGia+20000))+(tblChiTietHDN.SoLuong*(tblChiTietHDN.DonGia+20000)))/(tblMatHang.SoLuong+tblChiTietHDN.SoLuong)),-4) [Giá bán]
FROM tblMatHang INNER JOIN tblChiTietHDN
	ON tblMatHang.MaMatH=tblChiTietHDN.MaMatH
GROUP BY tblMatHang.TenMatH,tblMatHang.SoLuong,tblChiTietHDN.SoLuong,tblMatHang.DonGia,tblChiTietHDN.DonGia
GO	

SELECT* FROM tblHoaDonNhap
SELECT* FROM tblChiTietHDN
INSERT INTO tblChiTietHDN VALUES('HD4','B13','200','400000')

SELECT * FROM tblMatHang
