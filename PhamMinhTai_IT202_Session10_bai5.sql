-- =========================================
-- TẠO DATABASE
-- =========================================
CREATE DATABASE NationalHospital;
USE NationalHospital;

-- =========================================
-- TẠO BẢNG CHI NHÁNH MIỀN BẮC
-- =========================================
CREATE TABLE Records_North (
    Record_ID INT PRIMARY KEY,
    Patient_Name VARCHAR(100),
    Diagnosis TEXT,
    Record_Date DATE
);

-- =========================================
-- TẠO BẢNG CHI NHÁNH MIỀN NAM
-- =========================================
CREATE TABLE Records_South (
    Record_ID INT PRIMARY KEY,
    Patient_Name VARCHAR(100),
    Diagnosis TEXT,
    Record_Date DATE
);

-- =========================================
-- CHÈN DỮ LIỆU MẪU CHI NHÁNH MIỀN BẮC
-- =========================================
INSERT INTO Records_North
VALUES
(1, 'Nguyen Van A', 'Flu', '2026-04-28'),
(2, 'Tran Thi B', 'Fever', '2026-04-29');

-- =========================================
-- CHÈN DỮ LIỆU MẪU CHI NHÁNH MIỀN NAM
-- =========================================
INSERT INTO Records_South
VALUES
(1, 'Le Thi B', 'Cold', '2026-04-28'),
(3, 'Pham Van C', 'Covid-19', '2026-04-30');

-- =========================================
-- TẠO VIEW TOÀN QUỐC
-- =========================================
CREATE VIEW National_Record_View AS

SELECT
    Record_ID,
    Patient_Name,
    Diagnosis,
    Record_Date,
    'North' AS Branch_Name
FROM Records_North

UNION ALL

SELECT
    Record_ID,
    Patient_Name,
    Diagnosis,
    Record_Date,
    'South' AS Branch_Name
FROM Records_South;

-- =========================================
-- XEM TOÀN BỘ DỮ LIỆU
-- =========================================
SELECT *
FROM National_Record_View;

-- =========================================
-- KIỂM TRA RECORD_ID BỊ TRÙNG
-- =========================================
SELECT *
FROM National_Record_View
WHERE Record_ID = 1;

-- =========================================
-- SO SÁNH UNION
-- =========================================
SELECT
    Record_ID,
    Patient_Name,
    Diagnosis,
    Record_Date
FROM Records_North

UNION

SELECT
    Record_ID,
    Patient_Name,
    Diagnosis,
    Record_Date
FROM Records_South;

-- =========================================
-- SO SÁNH UNION ALL
-- =========================================
SELECT
    Record_ID,
    Patient_Name,
    Diagnosis,
    Record_Date
FROM Records_North

UNION ALL

SELECT
    Record_ID,
    Patient_Name,
    Diagnosis,
    Record_Date
FROM Records_South;

-- =========================================
-- KIỂM TRA VIEW
-- =========================================
SHOW FULL TABLES
WHERE TABLE_TYPE = 'VIEW';

-- =========================================
-- XÓA VIEW (NẾU CẦN)
-- =========================================
-- DROP VIEW National_Record_View;