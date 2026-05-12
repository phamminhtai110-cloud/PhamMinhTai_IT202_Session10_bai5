# PhamMinhTai_IT202_Session10_bai5

# BÁO CÁO: HỆ THỐNG "ẢO HÓA" DỮ LIỆU ĐA CHI NHÁNH

## 1. Thông tin bài tập
- Môn học: Cơ sở dữ liệu
- Chủ đề: VIEW và UNION ALL
- Hệ quản trị: MySQL

---

# 2. Mục tiêu bài thực hành

- Hiểu cơ chế hoạt động của UNION và UNION ALL
- Ứng dụng VIEW để tổng hợp dữ liệu từ nhiều bảng
- Giải quyết bài toán phân mảnh dữ liệu (Data Fragmentation)
- Tạo cột ảo (Virtual Column) trong truy vấn
- Phân tích sự khác biệt giữa:
  - UNION
  - UNION ALL

---

# 3. Mô tả bài toán

Bệnh viện Rikkei có:
- Chi nhánh miền Bắc
- Chi nhánh miền Nam

Do lịch sử hệ thống:
- Dữ liệu được lưu ở 2 bảng riêng biệt
- Không có bảng trung tâm

Ban giám đốc yêu cầu:
- Tra cứu bệnh án toàn quốc
- Không tạo thêm bảng vật lý
- Không sao chép dữ liệu

Giải pháp:
- Tạo VIEW tổng hợp dữ liệu realtime
- Sử dụng UNION ALL

---

# 4. Thiết kế cơ sở dữ liệu

## Bảng Records_North

```sql
CREATE TABLE Records_North (
    Record_ID INT PRIMARY KEY,
    Patient_Name VARCHAR(100),
    Diagnosis TEXT,
    Record_Date DATE
);
