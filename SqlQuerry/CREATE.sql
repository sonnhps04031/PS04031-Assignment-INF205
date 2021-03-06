CREATE DATABASE qlbh
CREATE TABLE [dbo].[tblChiTietHDN] (
	[MaHD] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[MaMatH] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[SoLuong] [float] NOT NULL ,
	[DonViTinh] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[DonGia] [float] NOT NULL ,
	[Thue] [float] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tblChiTietHDX] (
	[MaMatH] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[MaHD] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[SoLuong] [float] NOT NULL ,
	[DonViTinh] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[DonGia] [float] NOT NULL ,
	[Thue] [float] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tblDangNhap] (
	[TaiKhoan] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[MatKhau] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[DiaChi] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[DienThoai] [varchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tblDatHang] (
	[MaPhieu] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[TenKhachH] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[DienThoai] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[GhiChu] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tblDatHangCT] (
	[MaPhieu] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[MaMatH] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[SoLuong] [float] NULL ,
	[NgayDat] [datetime] NULL ,
	[NgayNhan] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tblHoaDonNhap] (
	[MaHD] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[MaNCC] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[NgayNhap] [datetime] NOT NULL ,
	[TongTien] [float] NULL ,
	[GhiChu] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tblHoaDonXuat] (
	[MaHD] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[MaNhanVien] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[NgayXuat] [datetime] NOT NULL ,
	[TongTien] [float] NULL ,
	[GhiChu] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tblMatHang] (
	[MaMatH] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[TenMatH] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[SoLuong] [float] NOT NULL ,
	[DonGia] [float] NOT NULL ,
	[GiaBan] [float] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tblNhaCungCap] (
	[MaNCC] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[MaMatH] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[TenNCC] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[DienThoai] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Fax] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Email] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[DiaChi] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[GhiChu] [nvarchar] (300) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tblNhanVien] (
	[MaNhanVien] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[TenNhanVien] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[DiaChi] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[DienThoai] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[tblChiTietHDN] ADD 
	CONSTRAINT [CK__tblChiTie__SoLuo__07F6335A] CHECK ([SoLuong] > 0)
GO

ALTER TABLE [dbo].[tblChiTietHDX] ADD 
	CONSTRAINT [CK__tblChiTie__SoLuo__0F975522] CHECK ([SoLuong] > 0)
GO

ALTER TABLE [dbo].[tblDatHang] ADD 
	CONSTRAINT [PK_tblDatHang] PRIMARY KEY  CLUSTERED 
	(
		[MaPhieu]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[tblHoaDonNhap] ADD 
	CONSTRAINT [PK__tblHoaDonNhap__023D5A04] PRIMARY KEY  CLUSTERED 
	(
		[MaHD]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[tblHoaDonXuat] ADD 
	CONSTRAINT [PK__tblHoaDonXuat__09DE7BCC] PRIMARY KEY  CLUSTERED 
	(
		[MaHD]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[tblMatHang] ADD 
	CONSTRAINT [PK__tblMatHang__78B3EFCA] PRIMARY KEY  CLUSTERED 
	(
		[MaMatH]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[tblNhaCungCap] ADD 
	CONSTRAINT [PK__tblNhaCungCap__7E6CC920] PRIMARY KEY  CLUSTERED 
	(
		[MaNCC]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[tblNhanVien] ADD 
	CONSTRAINT [PK_tblNhanVien] PRIMARY KEY  CLUSTERED 
	(
		[MaNhanVien]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[tblChiTietHDN] ADD 
	CONSTRAINT [FK_tblChiTietHDN_tblHoaDonNhap_MaHD] FOREIGN KEY 
	(
		[MaHD]
	) REFERENCES [dbo].[tblHoaDonNhap] (
		[MaHD]
	),
	CONSTRAINT [FK_tblChiTietHDN_tblMatHang_MaMatH] FOREIGN KEY 
	(
		[MaMatH]
	) REFERENCES [dbo].[tblMatHang] (
		[MaMatH]
	)
GO

ALTER TABLE [dbo].[tblChiTietHDX] ADD 
	CONSTRAINT [FK_tblChiTietHDX_tblHoaDonXuat] FOREIGN KEY 
	(
		[MaHD]
	) REFERENCES [dbo].[tblHoaDonXuat] (
		[MaHD]
	) ON UPDATE CASCADE ,
	CONSTRAINT [FK_tblChiTietHDX_tblMatHang] FOREIGN KEY 
	(
		[MaMatH]
	) REFERENCES [dbo].[tblMatHang] (
		[MaMatH]
	) ON UPDATE CASCADE 
GO

ALTER TABLE [dbo].[tblDatHangCT] ADD 
	CONSTRAINT [FK_tblDatHangCT_tblDatHang_MaPhieu] FOREIGN KEY 
	(
		[MaPhieu]
	) REFERENCES [dbo].[tblDatHang] (
		[MaPhieu]
	) ON UPDATE CASCADE ,
	CONSTRAINT [FK_tblDatHangCT_tblMatHang_MaMatH] FOREIGN KEY 
	(
		[MaMatH]
	) REFERENCES [dbo].[tblMatHang] (
		[MaMatH]
	) ON UPDATE CASCADE 
GO

ALTER TABLE [dbo].[tblHoaDonNhap] ADD 
	CONSTRAINT [FK_tblHoaDonNhap_tblNCC_MaNCC] FOREIGN KEY 
	(
		[MaNCC]
	) REFERENCES [dbo].[tblNhaCungCap] (
		[MaNCC]
	) ON UPDATE CASCADE 
GO

ALTER TABLE [dbo].[tblHoaDonXuat] ADD 
	CONSTRAINT [FK_tblHoaDonXuat_tblNhanVien_MaNhanVien] FOREIGN KEY 
	(
		[MaNhanVien]
	) REFERENCES [dbo].[tblNhanVien] (
		[MaNhanVien]
	) ON UPDATE CASCADE 
GO

ALTER TABLE [dbo].[tblNhaCungCap] ADD 
	CONSTRAINT [FK_tblMatHang_tblNhaCungCap_MaMatH] FOREIGN KEY 
	(
		[MaMatH]
	) REFERENCES [dbo].[tblMatHang] (
		[MaMatH]
	) ON UPDATE CASCADE 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE VIEW v_GiaBan
AS
SELECT DISTINCT(tblMatHang.TenMatH) [Tên mặt hàng],tblMatHang.SoLuong [Số lượng tồn],tblChiTietHDN.SoLuong [Số lượng nhập thêm],tblMatHang.DonGia [Giá cũ],tblChiTietHDN.DonGia [Giá nhập],ROUND((((tblMatHang.SoLuong*(tblMatHang.DonGia+20000))+(tblChiTietHDN.SoLuong*(tblChiTietHDN.DonGia+20000)))/(tblMatHang.SoLuong+tblChiTietHDN.SoLuong)),-4) [Giá bán]
FROM tblMatHang INNER JOIN tblChiTietHDN
	ON tblMatHang.MaMatH=tblChiTietHDN.MaMatH
GROUP BY tblMatHang.TenMatH,tblMatHang.SoLuong,tblChiTietHDN.SoLuong,tblMatHang.DonGia,tblChiTietHDN.DonGia

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

create view v_doanhthu
as
	select Month(tblHoaDonNhap.NgayNhap) Tháng,Year(tblHoaDonNhap.NgayNhap) Năm,sum(tblChiTietHDN.SoLuong*tblChiTietHDN.DonGia) Tổng_nhập,sum(tblChiTietHDX.SoLuong*tblChiTietHDX.DonGia) Tổng_xuất
	from ((((tblChiTietHDN inner join tblHoaDonNhap on tblChiTietHDN.MaHD=tblHoaDonNhap.MaHD) 
	inner join tblMatHang on tblMatHang.MaMatH=tblChiTietHDN.MaMatH)
	inner join tblChiTietHDX on tblChiTietHDX.MaMatH=tblMatHang.MaMatH)
	inner join tblHoaDonXuat on tblChiTietHDX.MaHD=tblHoaDonXuat.MaHD)
	where (Month(tblHoaDonNhap.NgayNhap)=Month(tblHoaDonXuat.NgayXuat)) 
	and (Year(tblHoaDonNhap.NgayNhap)=Year(tblHoaDonXuat.NgayXuat))
	group by tblHoaDonNhap.NgayNhap

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE VIEW vInHDN
AS
	SELECT tblHoaDonNhap.MaHD,TenNCC,TenMatH,tblChiTietHDN.SoLuong,TongTien,NgayNhap,tblChiTietHDN.DonGia,Thue,DonViTinh,tblHoaDonNhap.GhiChu 
           FROM tblHoaDonNhap INNER JOIN tblChiTietHDN ON tblHoaDonNhap.MaHD=tblChiTietHDN.MaHD
           INNER JOIN tblMatHang ON tblChiTietHDN.MaMatH=tblMatHang.MaMatH
           INNER JOIN tblNhaCungCap ON tblNhaCungCap.MaNCC=tblHoaDonNhap.MaNCC

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE VIEW vInPhieu
AS
	select tblDatHangCT.MaPhieu,tblDatHangCT.MaMatH,TenMatH,TenKhachH,tblDatHangCT.SoLuong,NgayDat,NgayNhan,DienThoai,GhiChu from tblDatHangCT inner join tblMatHang on tblDatHangCT.MaMatH=tblMatHang.MaMatH
                INNER JOIN tblDatHang ON tblDatHang.MaPhieu=tblDatHangCT.MaPhieu

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE VIEW vInHDX
AS
	SELECT tblHoaDonXuat.MaHD,tblNhanVien.TenNhanVien,tblMatHang.TenMatH,tblChiTietHDX.SoLuong,TongTien,tblHoaDonXuat.NgayXuat,tblChiTietHDX.DonGia,Thue,DonViTinh,tblHoaDonXuat.GhiChu
        FROM tblHoaDonXuat INNER JOIN tblChiTietHDX ON tblHoaDonXuat.MaHD=tblChiTietHDX.MaHD
        INNER JOIN tblMatHang ON tblMatHang.MaMatH=tblChiTietHDX.MaMatH
        INNER JOIN tblNhanVien ON tblNhanVien.MaNhanVien=tblHoaDonXuat.MaNhanVien

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

