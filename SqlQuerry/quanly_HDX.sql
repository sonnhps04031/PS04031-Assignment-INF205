select tblMatHang.TenMatH M?t_hàng,tblNhanVien.TenNhanVien Nhân_viên,tblHoaDonXuat.NgayXuat Ngày_xu?t,tblChiTietHDX.SoLuong S?_lu?ng,tblChiTietHDX.DonGia Ðon_giá,tblHoaDonXuat.DonViTinh Ðon_v?_tính
 from (((tblMatHang inner join tblChiTietHDX on tblMatHang.MaMatH=tblChiTietHDX.MaMatH)
 inner join tblHoaDonXuat on tblChiTietHDX.MaHD=tblHoaDonXuat.MaHD)
 inner join tblNhanVien on tblHoaDonXuat.MaNhanVien=tblNhanVien.MaNhanVien)