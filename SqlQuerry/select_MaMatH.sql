select tblNhaCungCap.TenNCC,tblNhaCungCap.MaNCC
from tblMatHang inner join tblNhaCungCap
	on tblMatHang.MaMatH=tblNhaCungCap.MaMatH 
	and tblNhaCungCap.MaMatH='b13'