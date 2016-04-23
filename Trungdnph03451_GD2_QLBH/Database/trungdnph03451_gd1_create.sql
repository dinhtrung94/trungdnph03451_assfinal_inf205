-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2016-03-24 22:37:22.513




-- tables
-- Table: ChiTietHoaDon
CREATE TABLE ChiTietHoaDon (
    No int  NOT NULL,
    MaHD int  NOT NULL,
    MaSP int  NOT NULL,
    SoLuong int  NOT NULL,
    CONSTRAINT ChiTietHoaDon_pk PRIMARY KEY  (No)
)
;





-- Table: HoaDon
CREATE TABLE HoaDon (
    MaHD int  NOT NULL,
    MaKH int  NOT NULL,
    Ngayxuat datetime  NOT NULL,
    Tongtien int  NOT NULL,
    CONSTRAINT HoaDon_pk PRIMARY KEY  (MaHD)
)
;





-- Table: KhachHang
CREATE TABLE KhachHang (
    MaKH int  NOT NULL,
    TenKH nvarchar(255)  NOT NULL,
    Email varchar(255)  NOT NULL,
    DiaChi nvarchar(255)  NOT NULL,
    DienThoai int  NOT NULL,
    CONSTRAINT KhachHang_pk PRIMARY KEY  (MaKH)
)
;





-- Table: LoaiSanPham
CREATE TABLE LoaiSanPham (
    MaLoai int  NOT NULL,
    TenLoai varchar(255)  NOT NULL,
    MaLoaiCha int  NULL,
    CONSTRAINT LoaiSanPham_pk PRIMARY KEY  (MaLoai)
)
;





-- Table: SanPham
CREATE TABLE SanPham (
    MaSP int  NOT NULL,
    MaLoai int  NOT NULL,
    Madonvi char(10)  NOT NULL,
    TenSP varchar(255)  NOT NULL,
    GiaSP decimal(12,2)  NOT NULL,
    MoTaSP varchar(1000)  NOT NULL,
    CONSTRAINT SanPham_pk PRIMARY KEY  (MaSP)
)
;









-- foreign keys
-- Reference:  client_purchase (table: HoaDon)

ALTER TABLE HoaDon ADD CONSTRAINT client_purchase 
    FOREIGN KEY (MaKH)
    REFERENCES KhachHang (MaKH)
;

-- Reference:  product_category_product (table: SanPham)

ALTER TABLE SanPham ADD CONSTRAINT product_category_product 
    FOREIGN KEY (MaLoai)
    REFERENCES LoaiSanPham (MaLoai)
;

-- Reference:  product_category_product_category (table: LoaiSanPham)

ALTER TABLE LoaiSanPham ADD CONSTRAINT product_category_product_category 
    FOREIGN KEY (MaLoaiCha)
    REFERENCES LoaiSanPham (MaLoai)
;

-- Reference:  product_purchase_item (table: ChiTietHoaDon)

ALTER TABLE ChiTietHoaDon ADD CONSTRAINT product_purchase_item 
    FOREIGN KEY (MaSP)
    REFERENCES SanPham (MaSP)
;

-- Reference:  purchase_purchase_item (table: ChiTietHoaDon)

ALTER TABLE ChiTietHoaDon ADD CONSTRAINT purchase_purchase_item 
    FOREIGN KEY (MaHD)
    REFERENCES HoaDon (MaHD)
;





-- End of file.

