CREATE DATABASE perusahaan;

USE  perusahaan;

	-- Tabel Departemen
CREATE TABLE departemen (
	id_departemen INT PRIMARY KEY,
    nama_departemen VARCHAR(255)
    );

	-- Table Manager
CREATE TABLE manager (
	id_manager INT PRIMARY KEY,
    nama_manager VARCHAR(255),
    tanggal_Lahir DATE
	);

	-- Table Karyawan
CREATE TABLE karyawan (
	id_karyawan INT PRIMARY KEY,
    nama_karyawan VARCHAR(255),
    tanggal_lahir DATE,
    id_departemen INT,
    FOREIGN KEY (id_departemen) REFERENCES departemen (id_departemen)
    );

	-- Table Supervisor
CREATE TABLE supervisor (
	id_supervisor INT PRIMARY KEY,
    nama_supervisor VARCHAR(255),
    tanggal_lahir DATE
    );
    
    -- Table Projek
CREATE TABLE projek (
	id_projek INT PRIMARY KEY,
    nama_projek VARCHAR(255),
    lokasi_projek VARCHAR(255),
    id_departemen INT,
    FOREIGN KEY (id_departemen) REFERENCES departemen (id_departemen)
    );