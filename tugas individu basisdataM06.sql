CREATE DATABASE IF NOT EXISTS mahasiswa1;
USE mahasiswa1;

CREATE TABLE mhs (
    nim VARCHAR(100),
    nama VARCHAR(100),
    prodi VARCHAR(100)
);

INSERT INTO mhs VALUES 
("001", "A", "INF"),
("002", "B", "SI"),
("003", "C", "TSP"),
("004", "D", "ARS"),
("005", "E", "SI"),
("006", "F", "INF"),
("007", "G", "INF"),
("008", "H", "SI"),
("009", "I", "SI"),
("010", "J", "SI"),
("011", "K", "SI");

SELECT prodi, COUNT(*) AS jml_mhs
FROM mhs
WHERE prodi = "INF"
GROUP BY prodi;

SELECT prodi, COUNT(*) AS jml_mhs
FROM mhs
GROUP BY prodi
HAVING COUNT(*) >= 3;

CREATE TABLE DataMahasiswa (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nama VARCHAR(100),
    usia INT,
    ipk DECIMAL(3,2),
    status_aktif BOOLEAN,
    tanggal_lahir DATE,
    waktu_login TIME,
    waktu_full DATETIME,
    waktu_timestamp TIMESTAMP
);

INSERT INTO DataMahasiswa (nama, usia, ipk, status_aktif, tanggal_lahir, waktu_login, waktu_full, waktu_timestamp)
VALUES 
    ('John Doe', 20, 3.50, TRUE, '2003-01-15', '08:30:00', '2024-10-01 08:30:00', CURRENT_TIMESTAMP),
    ('Jane Smith', 22, 3.75, TRUE, '2001-03-12', '09:15:00', '2024-10-02 09:15:00', CURRENT_TIMESTAMP);

SELECT * FROM DataMahasiswa;

SELECT SUM(ipk) AS Total_IPK FROM DataMahasiswa;

SELECT AVG(ipk) AS Rata_Rata_IPK FROM DataMahasiswa;

SELECT * FROM DataMahasiswa
WHERE status_aktif = TRUE;

UPDATE DataMahasiswa
SET ipk = 3.80
WHERE nama = 'John Doe';

DELETE FROM DataMahasiswa
WHERE nama = 'Jane Smith';
