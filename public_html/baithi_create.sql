-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2015-07-01 01:24:27.455




-- tables
-- Table: TNhanvien
CREATE TABLE TNhanvien (
    MaNV varchar(25)  NOT NULL,
    TenNv varchar(25)  NOT NULL,
    Ngaysinh date  NOT NULL,
    Gioitinh varchar(10)  NOT NULL,
    Email varchar(25)  NOT NULL,
    Mucluong int  NOT NULL,
    Maphong varchar(25)  NOT NULL,
    CONSTRAINT TNhanvien_pk PRIMARY KEY (MaNV)
);



-- Table: TPhongban
CREATE TABLE TPhongban (
    Maphong varchar(25)  NOT NULL,
    Tenphong varchar(25)  NOT NULL,
    CONSTRAINT TPhongban_pk PRIMARY KEY (Maphong)
);







-- foreign keys
-- Reference:  TPhongban_TNhanvien (table: TPhongban)


ALTER TABLE TPhongban ADD CONSTRAINT TPhongban_TNhanvien 
    FOREIGN KEY (Maphong)
    REFERENCES TNhanvien (MaNV)
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE 
;






-- End of file.

