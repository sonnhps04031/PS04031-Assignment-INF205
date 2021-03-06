--Hoa don nhap
--select tblHoaDonNhap.MaHD,tblHoaDonNhap.MaNCC,tblChiTietHDN.MaMatH,tblHoaDonNhap.NgayNhap,tblHoaDonNhap.DonViTinh,tblChiTietHDN.SoLuong,tblChiTietHDN.DonGia
--from tblHoaDonNhap inner join tblChiTietHDN
	--on tblHoaDonNhap.MaHD=tblChiTietHDN.MaHD
--where tblHoaDonNhap.MaHD='A13'

--Select theo ma mat hang
select tblMatHang.TenMatH,tblNhaCungCap.TenNCC,tblChiTietHDN.SoLuong,tblChiTietHDN.DonGia,tblHoaDonNhap.NgayNhap,tblHoaDonNhap.DonViTinh
from (((tblNhaCungCap inner join tblHoaDonNhap on tblNhaCungCap.MaNCC=tblHoaDonNhap.MaNCC)
	inner join tblChiTietHDN on tblHoaDonNhap.MaHD=tblChiTietHDN.MaHD)
	inner join tblMatHang on tblChiTietHDN.MaMatH=tblMatHang.MaMatH)
where tblChiTietHDN.MaMatH=N'H15'

--Select theo ma nha cung cap
select tblMatHang.TenMatH,tblNhaCungCap.TenNCC,tblChiTietHDN.SoLuong,tblChiTietHDN.DonGia,tblHoaDonNhap.NgayNhap,tblHoaDonNhap.DonViTinh
from (((tblNhaCungCap inner join tblHoaDonNhap on tblNhaCungCap.MaNCC=tblHoaDonNhap.MaNCC)
	inner join tblChiTietHDN on tblHoaDonNhap.MaHD=tblChiTietHDN.MaHD)
	inner join tblMatHang on tblChiTietHDN.MaMatH=tblMatHang.MaMatH)
where tblNhaCungCap.MaNCC=N'A1'

--Select theo ngay thang
select tblMatHang.TenMatH,tblNhaCungCap.TenNCC,tblChiTietHDN.SoLuong,tblChiTietHDN.DonGia,tblHoaDonNhap.NgayNhap,tblHoaDonNhap.DonViTinh
from (((tblNhaCungCap inner join tblHoaDonNhap on tblNhaCungCap.MaNCC=tblHoaDonNhap.MaNCC)
	inner join tblChiTietHDN on tblHoaDonNhap.MaHD=tblChiTietHDN.MaHD)
	inner join tblMatHang on tblChiTietHDN.MaMatH=tblMatHang.MaMatH)
where tblHoaDonNhap.NgayNhap='2005/7/8' 
	and tblMatHang.MaMatH='B12' and tblNhaCungCap.MaNCC='A1' 

--select theo nam
select tblMatHang.TenMatH,tblNhaCungCap.TenNCC,tblChiTietHDN.SoLuong,tblChiTietHDN.DonGia,tblHoaDonNhap.NgayNhap,tblHoaDonNhap.DonViTinh
from (((tblNhaCungCap inner join tblHoaDonNhap on tblNhaCungCap.MaNCC=tblHoaDonNhap.MaNCC)
	inner join tblChiTietHDN on tblHoaDonNhap.MaHD=tblChiTietHDN.MaHD)
	inner join tblMatHang on tblChiTietHDN.MaMatH=tblMatHang.MaMatH)
where Day(tblHoaDonNhap.NgayNhap)=N'7' 
	