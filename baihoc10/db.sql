CREATE DATABASE IF NOT EXISTS quan_ly_phim ;
1. phim 50 bộ phim
    - id int
    - mã phim varchar
   
    - thời lượng time
    - năm int
    - diễn viên varchar
    - tuổi int
    - đạo diễn varchar
    - đường dẫn phim
    - đường dẫn trailer
    - poster
    - nội dung text
    - mô tả: text
    - quốc gia (Id)  insert hết tất cả các quốc gia
    - Thể loại (Id)  10 thể loahi
2. người dùng
    - id int 
    - tên đăng nhập varchar
    - mật khẩu varchar
    - loại tài khoản (admin, người dùng, đạo diễn, diễn viên)// tạo tài khoản cho khảong 30 dữ liệu có đầy đủ (admin, người dùng, đạo diễn, diễn viên)
    - tuổi int 
    - sđt varchar(10) 
    - email
3. Thể loại
    - Id int 
    - Tên thể loại varchar
4. Quốc gia
    - id int 
    - Tên Quốc gia varchar
-- viết câu lậi insert dữ liệu vào trong 
5. phim - diễn viên 
 - id int 
 - id_dien_vien int 
 - id_phim int 
 CREATE TABLE phim (
    id int AUTO_INCREMENT,
    ma_phim varchar(10),
    thoi_luong int,
    nam int,
    tuoi int,
    dao_dien int,
    link_phim varchar(255),
    trailer varchar(255),
    poster varchar(255),
    noi_dung text,
    mo_ta text,
    quoc_gia_id int,
    the_loai_id int
);
CREATE TABLE nguoi_dung(
    id int AUTO_INCREMENT,
    ten_dang_Nhap varchar(30),
    mat_khau varchar(30),
    tuoi int,
    so_dien_thoai varchar(10),
    email varchar(20),
   	vai_tro_id int
);

create TABLE vai_tro(
	id int AUTO_INCREMENT,
    vai_tro varchar(50)
);

CREATE TABLE the_loai(
    id int AUTO_INCREMENT,
    tenTheLoai varchar(40)
);
CREATE TABLE quoc_gia(
    id int AUTO_INCREMENT,
    tenQuocGia varchar(30)
);

create TABLE phim_dien_vien(
	id int AUTO_INCREMENT,
    phim_id int,
    dien_vien_id int
);
tạo ng dung 
1 admin
---------------------17/11----------------------------
viết câu lệnh alther thêm 1 côt vào bảng khi đã có dữ liệu
CREATE DATABASE IF NOT EXISTS quanly_phim
CREATE TABLE vai_tro (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vai_tro VARCHAR(50)
);

CREATE TABLE nguoi_dung (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ten_dang_nhap VARCHAR(30),
    mat_khau VARCHAR(255),
    tuoi INT,
    so_dien_thoai VARCHAR(10),
    email VARCHAR(50),
    vai_tro_id INT,
    FOREIGN KEY (vai_tro_id) REFERENCES vai_tro(id)
);

CREATE TABLE the_loai (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tenTheLoai VARCHAR(40)
);

CREATE TABLE quoc_gia (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tenQuocGia VARCHAR(30)
);

CREATE TABLE phim (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ma_phim VARCHAR(10),
    thoi_luong INT,
    nam INT,
    tuoi INT,
    dao_dien INT,
    link_phim VARCHAR(255),
    trailer VARCHAR(255),
    poster VARCHAR(255),
    noi_dung TEXT,
    mo_ta TEXT,
    quoc_gia_id INT,
    the_loai_id INT,
    FOREIGN KEY (dao_dien) REFERENCES nguoi_dung(id),
    FOREIGN KEY (quoc_gia_id) REFERENCES quoc_gia(id),
    FOREIGN KEY (the_loai_id) REFERENCES the_loai(id)
);

CREATE TABLE phim_dien_vien (
    id INT AUTO_INCREMENT PRIMARY KEY,
    phim_id INT,
    dien_vien_id INT, 
    FOREIGN KEY (phim_id) REFERENCES phim(id),
    FOREIGN KEY (dien_vien_id) REFERENCES nguoi_dung(id)
);
INSERT INTO quoc_gia(tenQuocGia) VALUES('Việt Nam'),('Nhật Bản'),('Trung Quốc'),('Hàn Quốc'),('Lào'),('Campuchia'),('Malaysia'),('Ấn Độ'),('Mỹ'),('Nga'),('Thái Lan');
INSERT INTO the_loai(tenTheLoai) VALUES('Hài kịch'),('Kinh dị'),('Gia đình'),('Tình cảm'),('Học đường'),('Viễn tưởng'),('Hoạt hình');
INSERT INTO vai_tro(vai_tro) VALUES('Admin'),('Người dùng'),('Đạo diễn'),('Diễn viên');
INSERT INTO `nguoi_dung`(`ten_dang_nhap`, `mat_khau`, `tuoi`, `so_dien_thoai`, `email`, `vai_tro_id`) VALUES ('admin','123456','18','0868666666','admin123@gmail.com',1),
('ltan','123456','20','0943780076','2121051201@student.humg.edu.vn',2),
('lvanh','123456','21','0987351621','2121050104@student.humg.edu.vn',3),
('nndanh','123456','20','0815085168','2221050676@student.humg.edu.vn',4);
INSERT INTO `phim`(`ma_phim`, `thoi_luong`, `nam`, `tuoi`, `dao_dien`, `link_phim`, `trailer`, `poster`, `noi_dung`, `mo_ta`, `quoc_gia_id`, `the_loai_id`) VALUES ('md',120,2025,18,3,'https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','','Nội dung Mưa đỏ là bản anh hùng ca bi tráng về 81 ngày đêm bảo vệ Thành cổ Quảng Trị năm 1972, khắc họa sự hy sinh anh dũng của các chiến sĩ và lòng yêu nước mãnh liệt của dân tộc. Tác phẩm đan xen giữa những trận đánh ác liệt với câu chuyện đời thường, tình đồng đội, tình yêu, và đặc biệt là tâm lý con người khi đối mặt với sự tàn khốc của chiến tranh.','Phim mưa đỏ 2025',1,3)

--------//-----
CREATE DATABASE IF NOT EXISTS quanly_phim
CREATE TABLE vai_tro (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vai_tro VARCHAR(50)
);

CREATE TABLE nguoi_dung (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ten_dang_nhap VARCHAR(30),
    mat_khau VARCHAR(255),
    tuoi INT,
    so_dien_thoai VARCHAR(10),
    email VARCHAR(50),
    vai_tro_id INT,
    FOREIGN KEY (vai_tro_id) REFERENCES vai_tro(id)
);

CREATE TABLE the_loai (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tenTheLoai VARCHAR(40)
);

CREATE TABLE quoc_gia (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tenQuocGia VARCHAR(30)
);

CREATE TABLE phim (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ma_phim VARCHAR(10),
    ten_phim VARCHAR(255),
    thoi_luong INT,
    nam INT,
    tuoi INT,
    dao_dien INT,
    link_phim VARCHAR(255),
    trailer VARCHAR(255),
    poster VARCHAR(255),
    noi_dung TEXT,
    mo_ta TEXT,
    quoc_gia_id INT,
    the_loai_id INT,
    FOREIGN KEY (dao_dien) REFERENCES nguoi_dung(id),
    FOREIGN KEY (quoc_gia_id) REFERENCES quoc_gia(id),
    FOREIGN KEY (the_loai_id) REFERENCES the_loai(id)
);

CREATE TABLE phim_dien_vien (
    id INT AUTO_INCREMENT PRIMARY KEY,
    phim_id INT,
    dien_vien_id INT, 
    FOREIGN KEY (phim_id) REFERENCES phim(id),
    FOREIGN KEY (dien_vien_id) REFERENCES nguoi_dung(id)
);
INSERT INTO quoc_gia(tenQuocGia) VALUES('Việt Nam'),('Nhật Bản'),('Trung Quốc'),('Hàn Quốc'),('Lào'),('Campuchia'),('Malaysia'),('Ấn Độ'),('Mỹ'),('Nga'),('Thái Lan');
INSERT INTO the_loai(tenTheLoai) VALUES('Hài kịch'),('Kinh dị'),('Gia đình'),('Tình cảm'),('Học đường'),('Viễn tưởng'),('Hoạt hình'),('Tài Liệu');
INSERT INTO vai_tro(vai_tro) VALUES('Admin'),('Người dùng'),('Đạo diễn'),('Diễn viên');
INSERT INTO `nguoi_dung`(`ten_dang_nhap`, `mat_khau`, `tuoi`, `so_dien_thoai`, `email`, `vai_tro_id`) VALUES ('admin','123456','18','0868666666','admin123@gmail.com',1),
('ltan','123457','20','0943780076','2121051201@student.humg.edu.vn',2),
('nvan','123458','20','0943780076','2121051201@student.humg.edu.vn',2),
('lvanh','123459','21','0987351621','2121050104@student.humg.edu.vn',2),
('nndanh','123460','20','0815085168','2221050676@student.humg.edu.vn',3),
('pgiang','123456','20','0943780076','2121051201@student.humg.edu.vn',3),
('cquyen','123456','20','0943780076','2121051201@student.humg.edu.vn',3),
('phue','123456','20','0943780076','2121051201@student.humg.edu.vn',4),
('lele','123456','20','0943780076','2121051201@student.humg.edu.vn',4),
('tnga','123456','20','0943780076','2121051201@student.humg.edu.vn',4);
INSERT INTO phim( ma_phim, ten_phim, thoi_luong, nam, tuoi, dao_dien, link_phim, trailer, poster, noi_dung, mo_ta, quoc_gia_id, the_loai_id) VALUES 
('md','Mưa Đỏ',120,2025,18,3,'https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','','Nội dung Mưa đỏ là bản anh hùng ca bi tráng về 81 ngày đêm bảo vệ Thành cổ Quảng Trị năm 1972, khắc họa sự hy sinh anh dũng của các chiến sĩ và lòng yêu nước mãnh liệt của dân tộc. Tác phẩm đan xen giữa những trận đánh ác liệt với câu chuyện đời thường, tình đồng đội, tình yêu, và đặc biệt là tâm lý con người khi đối mặt với sự tàn khốc của chiến tranh.','Phim mưa đỏ 2025',1,8),
('ttl','Trần Tình Lệnh',50,2018,18,3,'https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','','Ngụy Vô Tiện và Lam Vong Cơ cùng điều tra những thế lực tà ác, dẫn đến âm mưu lớn chấn động tu chân giới.','Phim Trần Tình Lệnh 2018',3,6),
('kacvpe','Khi anh chạy về phía em',24,2023,15,3,'https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','','Câu chuyện tình thanh xuân nhẹ nhàng giữa cô nữ sinh hướng nội và chàng trai tỏa sáng như mặt trời.','Phim Khi anh chạy về phía em 2024',3,4),
('ddao','Địa Đạo',126,2025,16,3,'https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','','Địa Đạo Củ Chi kể về cuộc sống và chiến đấu gian khổ của du kích Củ Chi trong hệ thống địa đạo ngầm thời kháng chiến chống Mỹ. Bộ phim tái hiện tinh thần kiên cường, mưu trí và những hy sinh thầm lặng của quân dân nơi “vùng đất thép”.','Phim Địa Đạo 2025',1,8),
('md','Mưa Đỏ',120,2025,18,3,'https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','','Nội dung Mưa đỏ là bản anh hùng ca bi tráng về 81 ngày đêm bảo vệ Thành cổ Quảng Trị năm 1972, khắc họa sự hy sinh anh dũng của các chiến sĩ và lòng yêu nước mãnh liệt của dân tộc. Tác phẩm đan xen giữa những trận đánh ác liệt với câu chuyện đời thường, tình đồng đội, tình yêu, và đặc biệt là tâm lý con người khi đối mặt với sự tàn khốc của chiến tranh.','Phim mưa đỏ 2025',1,3),
('conan','Conan',120,1994,13,3,'https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','','Câu chuyện xoay quanh Kudo Shinichi, thám tử trung học tài giỏi bị tổ chức Áo Đen cho uống thuốc APTX-4869 khiến cơ thể thu nhỏ thành một đứa bé','Phim Conan',2,7),
('enlt','Ê nhỏ lớp trưởng!',24,2018,18,3,'https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','','Phim kể về lớp 10A1 trường chuyên Hạo Nhiên, nơi tồn tại 2 phe: “phe nổi loạn” và “phe chăm ngoan”.','Phim Ê nhỏ lớp trưởng!',1,5),
('clvb','Cua lại vợ bầu',30,2020,15,3,'https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','','Cua Lại Vợ Bầu kể về hành trình dở khóc dở cười của Trọng Thoại khi cố gắng giữ lấy tình yêu với Nhã Linh giữa hiểu lầm và sự xuất hiện của người yêu cũ giàu có. Phim mang đến nhiều tiếng cười nhưng cũng chạm đến cảm xúc về trách nhiệm và giá trị gia đình.','Phim Cua Lại Vợ Bầu',1,1),
('The Conjuring','The Conjuring',120,2025,18,3,'https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','','Phim kể về một gia đình gặp phải những hiện tượng ma ám đáng sợ tại ngôi nhà nông thôn, buộc họ phải nhờ đến sự giúp đỡ của các chuyên gia để đối mặt với thế lực hắc ám.','Phim The Conjuring 2025',9,2),
('avt','Avatar (2009)',120,2009,18,3,'https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','','kể về hành tinh Pandora nơi con người khai thác tài nguyên và xung đột với người bản địa Na’vi. Nhân vật chính Jake Sully nhập vào cơ thể Avatar và dần hiểu, đồng cảm với văn hóa Na’vi, từ đó dẫn đến cuộc chiến bảo vệ hành tinh khỏi sự tàn phá của con người.','Phim Avatar (2009)',9,6);




CREATE DATABASE IF NOT EXISTS quanly_phim;
CREATE TABLE vai_tro (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vai_tro VARCHAR(50)
);

CREATE TABLE nguoi_dung (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ten_dang_nhap VARCHAR(30),
    mat_khau VARCHAR(255),
    tuoi INT,
    so_dien_thoai VARCHAR(10),
    email VARCHAR(50),
    vai_tro_id INT,
    FOREIGN KEY (vai_tro_id) REFERENCES vai_tro(id)
);

CREATE TABLE the_loai (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tenTheLoai VARCHAR(40)
);

CREATE TABLE quoc_gia (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tenQuocGia VARCHAR(30)
);

CREATE TABLE phim (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ma_phim VARCHAR(10),
    ten_phim VARCHAR(255),
    thoi_luong INT,
    nam INT,
    tuoi INT,
    dao_dien INT,
    link_phim VARCHAR(255),
    trailer VARCHAR(255),
    poster VARCHAR(255),
    noi_dung TEXT,
    mo_ta TEXT,
    quoc_gia_id INT,
    the_loai_id INT,
    FOREIGN KEY (dao_dien) REFERENCES nguoi_dung(id),
    FOREIGN KEY (quoc_gia_id) REFERENCES quoc_gia(id),
    FOREIGN KEY (the_loai_id) REFERENCES the_loai(id)
);

CREATE TABLE phim_dien_vien (
    id INT AUTO_INCREMENT PRIMARY KEY,
    phim_id INT,
    dien_vien_id INT, 
    FOREIGN KEY (phim_id) REFERENCES phim(id),
    FOREIGN KEY (dien_vien_id) REFERENCES nguoi_dung(id)
);
INSERT INTO quoc_gia(tenQuocGia) VALUES('Việt Nam'),('Nhật Bản'),('Trung Quốc'),('Hàn Quốc'),('Lào'),('Campuchia'),('Malaysia'),('Ấn Độ'),('Mỹ'),('Nga'),('Thái Lan');
INSERT INTO the_loai(tenTheLoai) VALUES('Hài kịch'),('Kinh dị'),('Gia đình'),('Tình cảm'),('Học đường'),('Viễn tưởng'),('Hoạt hình'),('Tài Liệu');
INSERT INTO vai_tro(vai_tro) VALUES('Admin'),('Người dùng'),('Đạo diễn'),('Diễn viên');
INSERT INTO `nguoi_dung`(`ten_dang_nhap`, `mat_khau`, `tuoi`, `so_dien_thoai`, `email`, `vai_tro_id`) VALUES ('admin','123456','18','0868666666','admin123@gmail.com',1),
('ltan','123457','20','0943780076','2121051201@student.humg.edu.vn',2),
('nvan','123458','20','0943780076','2121051201@student.humg.edu.vn',2),
('lvanh','123459','21','0987351621','2121050104@student.humg.edu.vn',2),
('nndanh','123460','20','0815085168','2221050676@student.humg.edu.vn',3),
('pgiang','123456','20','0943780076','2121051201@student.humg.edu.vn',3),
('cquyen','123456','20','0943780076','2121051201@student.humg.edu.vn',3),
('phue','123456','20','0943780076','2121051201@student.humg.edu.vn',4),
('lele','123456','20','0943780076','2121051201@student.humg.edu.vn',4),
('tnga','123456','20','0943780076','2121051201@student.humg.edu.vn',4);
INSERT INTO phim( ma_phim, ten_phim, thoi_luong, nam, tuoi, dao_dien, link_phim, trailer, poster, noi_dung, mo_ta, quoc_gia_id, the_loai_id) VALUES 
('md','Mưa Đỏ',120,2025,18,3,'https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','','Nội dung Mưa đỏ là bản anh hùng ca bi tráng về 81 ngày đêm bảo vệ Thành cổ Quảng Trị năm 1972, khắc họa sự hy sinh anh dũng của các chiến sĩ và lòng yêu nước mãnh liệt của dân tộc. Tác phẩm đan xen giữa những trận đánh ác liệt với câu chuyện đời thường, tình đồng đội, tình yêu, và đặc biệt là tâm lý con người khi đối mặt với sự tàn khốc của chiến tranh.','Phim mưa đỏ 2025',1,8),
('ttl','Trần Tình Lệnh',50,2018,18,3,'https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','','Ngụy Vô Tiện và Lam Vong Cơ cùng điều tra những thế lực tà ác, dẫn đến âm mưu lớn chấn động tu chân giới.','Phim Trần Tình Lệnh 2018',3,6),
('kacvpe','Khi anh chạy về phía em',24,2023,15,3,'https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','','Câu chuyện tình thanh xuân nhẹ nhàng giữa cô nữ sinh hướng nội và chàng trai tỏa sáng như mặt trời.','Phim Khi anh chạy về phía em 2024',3,4),
('ddao','Địa Đạo',126,2025,16,3,'https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','','Địa Đạo Củ Chi kể về cuộc sống và chiến đấu gian khổ của du kích Củ Chi trong hệ thống địa đạo ngầm thời kháng chiến chống Mỹ. Bộ phim tái hiện tinh thần kiên cường, mưu trí và những hy sinh thầm lặng của quân dân nơi “vùng đất thép”.','Phim Địa Đạo 2025',1,8),
('md','Mưa Đỏ',120,2025,18,3,'https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','','Nội dung Mưa đỏ là bản anh hùng ca bi tráng về 81 ngày đêm bảo vệ Thành cổ Quảng Trị năm 1972, khắc họa sự hy sinh anh dũng của các chiến sĩ và lòng yêu nước mãnh liệt của dân tộc. Tác phẩm đan xen giữa những trận đánh ác liệt với câu chuyện đời thường, tình đồng đội, tình yêu, và đặc biệt là tâm lý con người khi đối mặt với sự tàn khốc của chiến tranh.','Phim mưa đỏ 2025',1,3),
('conan','Conan',120,1994,13,3,'https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','','Câu chuyện xoay quanh Kudo Shinichi, thám tử trung học tài giỏi bị tổ chức Áo Đen cho uống thuốc APTX-4869 khiến cơ thể thu nhỏ thành một đứa bé','Phim Conan',2,7),
('enlt','Ê nhỏ lớp trưởng!',24,2018,18,3,'https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','','Phim kể về lớp 10A1 trường chuyên Hạo Nhiên, nơi tồn tại 2 phe: “phe nổi loạn” và “phe chăm ngoan”.','Phim Ê nhỏ lớp trưởng!',1,5),
('clvb','Cua lại vợ bầu',30,2020,15,3,'https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','','Cua Lại Vợ Bầu kể về hành trình dở khóc dở cười của Trọng Thoại khi cố gắng giữ lấy tình yêu với Nhã Linh giữa hiểu lầm và sự xuất hiện của người yêu cũ giàu có. Phim mang đến nhiều tiếng cười nhưng cũng chạm đến cảm xúc về trách nhiệm và giá trị gia đình.','Phim Cua Lại Vợ Bầu',1,1),
('The Conjuring','The Conjuring',120,2025,18,3,'https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','','Phim kể về một gia đình gặp phải những hiện tượng ma ám đáng sợ tại ngôi nhà nông thôn, buộc họ phải nhờ đến sự giúp đỡ của các chuyên gia để đối mặt với thế lực hắc ám.','Phim The Conjuring 2025',9,2),
('avt','Avatar (2009)',120,2009,18,3,'https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','','kể về hành tinh Pandora nơi con người khai thác tài nguyên và xung đột với người bản địa Na’vi. Nhân vật chính Jake Sully nhập vào cơ thể Avatar và dần hiểu, đồng cảm với văn hóa Na’vi, từ đó dẫn đến cuộc chiến bảo vệ hành tinh khỏi sự tàn phá của con người.','Phim Avatar (2009)',9,6);
ALTER TABLE phim
ADD tap_phim int 



CREATE DATABASE IF NOT EXISTS quanly_phim; # Chạy lệnh nhiều lần ko bị lỗi
CREATE TABLE IF NOT EXISTS THELOAI(
    id INT PRIMARY KEY,
    ten_the_loai varchar(50)
);
CREATE TABLE IF NOT EXISTS QUOCGIA(
	id int PRIMARY KEY,
    ten_quoc_gia varchar(30)
);
CREATE TABLE IF NOT EXISTS PHIM(
	id int PRIMARY KEY,
    ma_phim varchar(20),
    ten_phim varchar(50),
    thoi_luong float,
    nam int,
    dien_vien varchar(50),
    tuoi int,
    dao_dien varchar(50),
    poster varchar(255),
    trailer varchar(255),
    mo_ta text,
    the_loai_id int,
    quoc_gia_id int,
    FOREIGN KEY (the_loai_id) REFERENCES THELOAI(id),
    FOREIGN KEY (quoc_gia_id) REFERENCES QUOCGIA(id)
);
CREATE TABLE IF NOT EXISTS NGUOIDUNG(
	id int PRIMARY KEY, 
    loai_nguoi_dung varchar(20)
);
CREATE TABLE IF NOT EXISTS TAIKHOAN(
	id INT PRIMARY KEY,
    ten_dang_nhap varchar(50),
    mk varchar(50),
    tuoi int,
    ngay_sinh datetime,
    sdt varchar(10),
    email varchar(50),
	loai_nguoi_dung_id INT,
    ngay_sinh datetime,
    FOREIGN KEY (loai_nguoi_dung_id) REFERENCES NGUOIDUNG(id)
);
INSERT INTO THELOAI (id, ten_the_loai) VALUES
('1' , 'hành động' ),
('2' , 'kinh dị' ),
('3' , 'hài hước' ),
('4 ', 'lãng mạn' ),
('5 ',' khoa học viễn tưởng'),
('6 ', 'phá án'),
('7' , 'chính kịch') ,
('8 ', 'phiêu lưu'),
('9 ', 'hoạt hình' ),
('10 ', 'tài liệu' );
INSERT INTO QUOCGIA (id, ten_quoc_gia) VALUES
(1,'Việt Nam'),
(2,'Mỹ'),
(3,'Anh'),
(4,'Pháp'),
(5,'Đức'),
(6,'Canada'),
(7,'Nga'),
(8,'Trung Quốc'),
(9,'Hàn Quốc'),
(10,'Nhật Bản'),
(11,'Ý'),
(12,'Tây Ban Nha'),
(13,'Bồ Đào Nha'),
(14,'Hà Lan'),
(15,'Thái Lan'),
(16,'Indonesia'),
(17,'Malaysia'),
(18,'Philippines'),
(19,'Úc'),
(20,'Brazil'),
(21,'Mexico'),
(22,'Argentina'),
(23,'Thổ Nhĩ Kỳ'),
(24,'Ấn Độ'),
(25,'Pakistan'),
(26,'Đan Mạch'),
(27,'Na Uy'),
(28,'Thụy Điển'),
(29,'Thụy Sĩ'),
(30,'Ai Cập'),
(31,'UAE'),
(32,'Qatar'),
(33,'Saudi Arabia'),
(34,'New Zealand'),
(35,'Nam Phi'),
(36,'Kenya'),
(37,'Nigeria'),
(38,'Colombia'),
(39,'Peru'),
(40,'Chile'),
(41,'Finland'),
(42,'Poland'),
(43,'Belgium'),
(44,'Austria'),
(45,'Czech'),
(46,'Greece'),
(47,'Hungary'),
(48,'Romania'),
(49,'Ukraine');
INSERT INTO NGUOIDUNG ( id, loai_nguoi_dung) VALUES
(1,'admin'),
(2,'người dùng'),
(3,'đạo diễn'),
(4,'diễn viên'),
INSERT INTO TAIKHOAN (id, ten_dang_nhap, mk, tuoi, ngay_sinh, sdt, email, loai_nguoi_dung_id) VALUES
(1, 'admin_chinh',('pass123'), 35, '1990-01-15', '0901234567', 'admin.main@mail.com', 1),
(2, 'admin_phu',('pass123'), 28, '1997-05-20', '0912345678', 'admin.sub@mail.com', 1),
(3, 'nguyenvana',('user123'), 22, '2003-11-01', '0923456789', 'nguyen.a@mail.com', 2),
(4, 'tranvanb',('user123'), 18, '2007-07-25', '0934567890', 'tran.b@mail.com', 2),
(5, 'lethic',('user123'), 30, '1995-03-10', '0945678901', 'le.c@mail.com', 2),
(6, 'phamvand',('user123'), 45, '1980-09-12', '0956789012', 'pham.d@mail.com', 2),
(7, 'hoangthie',('user123'), 25, '2000-02-28', '0967890123', 'hoang.e@mail.com', 2),
(8, 'vulef',('user123'), 19, '2006-04-05', '0978901234', 'vu.f@mail.com', 2),
(9, 'maivan_g',('user123'), 33, '1992-10-18', '0989012345', 'mai.g@mail.com', 2),
(10, 'nguyenthih',('user123'), 29, '1996-06-03', '0990123456', 'nguyen.h@mail.com', 2),
(11, 'docong_i',('user123'), 21, '2004-12-14', '0812345678', 'do.i@mail.com', 2),
(12, 'nguyenvank',('user123'), 40, '1985-08-08', '0823456789', 'nguyen.k@mail.com', 2),
(13, 'director_A',('dirpass'), 55, '1970-01-05', '0834567890', 'director.a@mail.com', 3),
(14, 'director_B',('dirpass'), 48, '1977-11-20', '0845678901', 'director.b@mail.com', 3),
(15, 'director_C',('dirpass'), 62, '1963-04-17', '0856789012', 'director.c@mail.com', 3),
(16, 'director_D',('dirpass'), 39, '1986-07-09', '0867890123', 'director.d@mail.com', 3),
(17, 'director_E',('dirpass'), 41, '1984-03-22', '0878901234', 'director.e@mail.com', 3),
(18, 'director_F',('dirpass'), 51, '1974-09-01', '0889012345', 'director.f@mail.com', 3),
(19, 'director_G',('dirpass'), 34, '1991-12-11', '0890123456', 'director.g@mail.com', 3),
(20, 'director_H',('dirpass'), 47, '1978-02-19', '0701234567', 'director.h@mail.com', 3),
(21, 'actor_1',('actpass'), 27, '1998-08-25', '0712345678', 'actor.1@mail.com', 4),
(22, 'actress_2',('actpass'), 32, '1993-01-30', '0723456789', 'actress.2@mail.com', 4),
(23, 'actor_3',('actpass'), 44, '1981-06-06', '0734567890', 'actor.3@mail.com', 4),
(24, 'actress_4',('actpass'), 24, '2001-10-29', '0745678901', 'actress.4@mail.com', 4),
(25, 'actor_5',('actpass'), 50, '1975-11-04', '0756789012', 'actor.5@mail.com', 4),
(26, 'actress_6',('actpass'), 20, '2005-05-16', '0767890123', 'actress.6@mail.com', 4),
(27, 'actor_7',('actpass'), 38, '1987-03-13', '0778901234', 'actor.7@mail.com', 4),
(28, 'actress_8',('actpass'), 43, '1982-12-24', '0789012345', 'actress.8@mail.com', 4),
(29, 'actor_9',('actpass'), 36, '1989-08-17', '0790123456', 'actor.9@mail.com', 4),
(30, 'actress_10',('actpass'), 26, '1999-09-09', '0700000000', 'actress.10@mail.com', 4);

INSERT INTO PHIM (id, ma_phim, ten_phim, thoi_luong, nam, dien_vien, dao_dien, duong_dan_phim, duong_dan_trailer, poster, noi_dung, mo_ta, quoc_gia_id, the_loai_id) VALUES
(1, 'A1', 'Hai Phượng', '01:40:00', 2019, 'Ngô Thanh Vân', 'Lê Văn Kiệt', '/films/hai-phuong.mp4', 'https://youtu.be/a1', 'poster1.jpg', 'Phim hành động xoay quanh người mẹ đi cứu con.', 'Hành động gay cấn.', 1, 1),
(2, 'A2', 'Bố Già', '01:55:00', 2021, 'Trấn Thành', 'Trấn Thành', '/films/bo-gia.mp4', 'https://youtu.be/a2', 'poster2.jpg', 'Câu chuyện gia đình đầy cảm xúc.', 'Phim tâm lý Việt Nam.', 1, 7),
(3, 'A3', 'Chị Mười Ba', '01:45:00', 2020, 'Thu Trang', 'Thu Trang', '/films/chi-muoi-ba.mp4', 'https://youtu.be/a3', 'poster3.jpg', 'Nữ giang hồ quay lại báo thù.', 'Hài – hành động.', 1, 3),
(4, 'A4', 'Song Lang', '01:50:00', 2018, 'Isaac', 'Leon Lê', '/films/song-lang.mp4', 'https://youtu.be/a4', 'poster4.jpg', 'Câu chuyện nghệ sĩ cải lương.', 'Tâm lý – chính kịch.', 1, 7),
(5, 'A5', 'Lật Mặt 6', '02:05:00', 2023, 'Lý Hải', 'Lý Hải', '/films/lat-mat-6.mp4', 'https://youtu.be/a5', 'poster5.jpg', 'Bí mật trong chuyến nghỉ dưỡng.', 'Kịch tính bất ngờ.', 1, 7),
(6, 'A6', 'Mắt Biếc', '02:00:00', 2019, 'Trần Nghĩa, Trúc Anh', 'Victor Vũ', 'videos/matbiec.mp4', 'https://youtu.be/2x93m0aVqKc', 'poster/matbiec.jpg', 'Chuyện tình đơn phương của Ngạn dành cho Hà Lan suốt thời thơ ấu.', 'Phim lãng mạn chuyển thể từ tác phẩm của Nguyễn Nhật Ánh.', 1, 4), 
(7, 'A7', 'Chị Chị Em Em', '01:44:00', 2019, 'Thanh Hằng, Chi Pu', 'Vũ Ngọc Đãng', 'videos/chichieme.mp4', 'https://youtu.be/oJpN96CB2XA', 'poster/chichieme.jpg', 'Cuộc đối đầu ngầm giữa hai người phụ nữ với nhiều toan tính.', 'Phim tâm lý giật gân với nhiều cú twist bất ngờ.', 1, 7), 
(8, 'A8', 'Cô Ba Sài Gòn', '01:40:00', 2017, 'Ninh Dương Lan Ngọc', 'Kay Nguyễn', 'videos/cobasaigon.mp4', 'https://youtu.be/ktrQFcxdvWk', 'poster/cobasaigon.jpg', 'Câu chuyện về ngành may đo Áo dài Sài Gòn thập niên 60.', 'Phim thời trang – văn hóa độc đáo.', 1, 7),
(9, 'A9', 'Em Chưa 18', '01:36:00', 2017, 'Kaity Nguyễn, Kiều Minh Tuấn', 'Lê Thanh Sơn', 'videos/emchua18.mp4', 'https://youtu.be/vdFs9qFJkQM', 'poster/emchua18.jpg', 'Câu chuyện học đường kết hợp hài – tình cảm.', 'Phim Việt ăn khách nhất năm 2017.', 1, 3),
(10, 'A10', 'Gái Già Lắm Chiêu 3', '02:05:00', 2020, 'Ninh Dương Lan Ngọc', 'Nam Cito – Bảo Nhân', 'videos/gaigialamchieu3.mp4', 'https://youtu.be/H3N_XzvLh5c', 'poster/gaigia3.jpg', 'Mâu thuẫn gia đình trong giới thượng lưu Huế.', 'Phim drama sang trọng và đẹp mắt.', 1, 7),
(11, 'A11', 'Trần Tình Lệnh', '01:50:00', 2019, 'Tiêu Chiến, Vương Nhất Bác', 'Trịnh Vĩ Văn', 'videos/trantinhlenh.mp4', 'https://youtu.be/Ag5nZUDYBfU', 'poster/trantinhlenh.jpg', 'Hai thiếu niên tu tiên bước vào hành trình phá giải các bí ẩn giang hồ.', 'Phim cổ trang – huyền huyễn nổi tiếng toàn châu Á.', 8, 7),
(12, 'A12', 'Tam Sinh Tam Thế Thập Lý Đào Hoa', '01:58:00', 2017, 'Dương Mịch, Triệu Hựu Đình', 'Lâm Ngọc Phân', 'videos/tamsinhtamthe.mp4', 'https://youtu.be/U4J3N1L_zNA', 'poster/tamsinh.jpg', 'Tình yêu kéo dài ba kiếp giữa thượng thần Bạch Thiển và Thái tử Dạ Hoa.', 'Phim tiên hiệp lãng mạn kinh điển.', 8, 4),
(13, 'A13', 'Hạo Lan Truyện', '01:45:00', 2019, 'Ngu Thư Hân, Mao Tử Quân', 'Lý Mộc Qua', 'videos/haolantruyen.mp4', 'https://youtu.be/8983AlvQ9f8', 'poster/haolan.jpg', 'Hành trình sinh tồn của Lý Hạo Lan trong hậu cung vương triều Tần.', 'Phim cung đấu quyền mưu hấp dẫn.', 8, 7), 
(14, 'A14', 'Lang Điện Hạ', '01:50:00', 2020, 'Vương Đại Lục, Lý Thấm', 'Mạnh Tuấn', 'videos/langdienha.mp4', 'https://youtu.be/EBe8mOw0D6A', 'poster/langdienha.jpg', 'Câu chuyện tình yêu giữa một cô gái quý tộc và chàng lang tử bí ẩn.', 'Phim cổ trang – hành động đẹp mắt.', 8, 1), 
(15, 'A15', 'Diên Hy Công Lược', '01:40:00', 2018, 'Ngô Cẩn Ngôn, Nhiếp Viễn', 'Huệ Ca', 'videos/dienhycongluo.mp4', 'https://youtu.be/O0_goH1mNpU', 'poster/dienhy.jpg', 'Ngụy Anh Lạc bước vào hậu cung để điều tra cái chết của chị gái.', 'Phim cung đấu đình đám một thời.', 8, 7),
(16, 'A16', 'Tru Tiên Thanh Vân Chí', '01:55:00', 2016, 'Lý Dịch Phong, Triệu Lệ Dĩnh', 'Lưu Quốc Huy', 'videos/trutien.mp4', 'https://youtu.be/pEm2HFqRSbU', 'poster/trutien.jpg', 'Tình thù – tình yêu xoay quanh Trương Tiểu Phàm và Bích Dao.', 'Phim tiên hiệp hành động, kỹ xảo đẹp.', 8, 1),
(17, 'A17', 'Nữ Nhi Nhà Họ Kiều', '01:42:00', 2021, 'Bạch Vũ, Tống Tổ Nhi', 'Đặng Khoa', 'videos/nunhinhaho.mp4', 'https://youtu.be/jUgqewH5Hk4', 'poster/nunhi.jpg', 'Cuộc sống đầy biến động của sáu chị em nhà họ Kiều.', 'Phim gia đình – đời sống đầy cảm xúc.', 8, 7), 
(18, 'A18', 'Lưỡi Gươm Định Mệnh', '01:48:00', 2015, 'Lưu Diệc Phi, Donnie Yen', 'Trần Khải Ca', 'videos/luoiguom.mp4', 'https://youtu.be/1yi0CTeo0L4', 'poster/luoiguom.jpg', 'Một chiến binh trẻ đối mặt với định mệnh khi luyện kiếm cổ.', 'Phim võ thuật hoành tráng phong cách cổ trang.', 8, 1), 
(19, 'A19', 'Yêu Em Từ Dạ Dày', '01:30:00', 2020, 'Triệu Lộ Tư, Lâm Vũ Thân', 'Trần Tư Thành', 'videos/yeuemtudaday.mp4', 'https://youtu.be/Kn4fJICv8nM', 'poster/daday.jpg', 'Một nữ phóng viên mạnh mẽ và anh đầu bếp lạnh lùng dần trở nên gắn bó.', 'Phim ngôn tình – hài nhẹ nhàng, dễ thương.', 8, 3),
(20, 'A20', 'Thiếu Niên Ca Hành', '01:52:00', 2022, 'Lý Hồng Kiều, Lý Truyền Nghị', 'Doãn Đình', 'videos/thieuniencahanh.mp4', 'https://youtu.be/Y1GLC8WqhfQ', 'poster/thieunien.jpg', 'Hành trình giang hồ của nhóm thiếu niên tài năng.', 'Phim võ hiệp – hành động hấp dẫn, chuyển thể từ truyện.', 8, 1),
(21, 'A21', 'Inception', '02:28:00', 2010, 'Leonardo DiCaprio', 'Christopher Nolan', 'videos/inception.mp4', 'https://youtu.be/YoHD9XEInc0', 'poster/inception.jpg', 'Một nhóm điệp viên xâm nhập vào giấc mơ để đánh cắp thông tin.', 'Bom tấn khoa học viễn tưởng gây bão toàn cầu.', 2, 5),
(22, 'A22', 'Interstellar', '02:49:00', 2014, 'Matthew McConaughey', 'Christopher Nolan', 'videos/interstellar.mp4', 'https://youtu.be/zSWdZVtXT7E', 'poster/interstellar.jpg', 'Phi hành gia du hành xuyên vũ trụ tìm hành tinh mới cho nhân loại.', 'Khoa học – viễn tưởng cảm động.', 2, 5),
(23, 'A23', 'The Avengers', '02:23:00', 2012, 'Robert Downey Jr.', 'Joss Whedon', 'videos/avengers.mp4', 'https://youtu.be/eOrNdBpGMv8', 'poster/avengers.jpg', 'Biệt đội siêu anh hùng tập hợp chống lại Loki.', 'Hành động – siêu anh hùng.', 2, 1), 
(24, 'A24', 'Avatar', '02:42:00', 2009, 'Sam Worthington', 'James Cameron', 'videos/avatar.mp4', 'https://youtu.be/5PSNL1qE6VY', 'poster/avatar.jpg', 'Con người đặt chân đến hành tinh Pandora và xảy ra xung đột.', 'Bom tấn 3D đột phá.', 2, 5), 
(25, 'A25', 'John Wick', '01:41:00', 2014, 'Keanu Reeves', 'Chad Stahelski', 'videos/johnwick.mp4', 'https://youtu.be/2AUmvWm5ZDQ', 'poster/johnwick.jpg', 'Sát thủ huyền thoại tái xuất trả thù.', 'Hành động – tội phạm đỉnh cao.', 2, 1), 
(26, 'A26', 'The Matrix', '02:16:00', 1999, 'Keanu Reeves', 'The Wachowskis', 'videos/matrix.mp4', 'https://youtu.be/vKQi3bBA1y8', 'poster/matrix.jpg', 'Thế giới ảo điều khiển loài người.', 'Khoa học viễn tưởng kinh điển.', 2, 5),
(27, 'A27', 'Parasite', '02:12:00', 2019, 'Song Kang-ho', 'Bong Joon-ho', 'videos/parasite.mp4', 'https://youtu.be/5xH0H JHsaY', 'poster/parasite.jpg', 'Gia đình nghèo dần xâm nhập vào gia đình giàu có.', 'Phim Hàn Quốc đoạt Oscar.', 9, 7),
(28, 'A28', 'Your Name', '01:52:00', 2016, 'Ryunosuke Kamiki', 'Makoto Shinkai', 'videos/yourname.mp4', 'https://youtu.be/xU47nhruN-Q', 'poster/yourname.jpg', 'Hai thiếu niên hoán đổi cơ thể đầy kỳ bí.', 'Anime Nhật cảm xúc và đẹp mắt.', 10, 9); 



--------//////0-------
CREATE DATABASE IF NOT EXISTS quanly_phim;
USE quanly_phim;
CREATE TABLE IF NOT EXISTS vai_tro (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vai_tro VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS nguoi_dung (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ten_dang_nhap VARCHAR(30),
    mat_khau VARCHAR(255),
    tuoi INT,
    so_dien_thoai VARCHAR(10),
    email VARCHAR(50),
    vai_tro_id INT,
    FOREIGN KEY (vai_tro_id) REFERENCES vai_tro(id)
);

CREATE TABLE IF NOT EXISTS the_loai (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tenTheLoai VARCHAR(40)
);

CREATE TABLE IF NOT EXISTS quoc_gia (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tenQuocGia VARCHAR(30)
);

CREATE TABLE IF NOT EXISTS phim (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ma_phim VARCHAR(30),
    ten_phim VARCHAR(255),
    thoi_luong INT,
    nam INT,
    tuoi INT,
    dao_dien INT,
    link_phim VARCHAR(255),
    trailer VARCHAR(255),
    poster VARCHAR(255),
    noi_dung TEXT,
    mo_ta TEXT,
    quoc_gia_id INT,
    the_loai_id INT,
    FOREIGN KEY (dao_dien) REFERENCES nguoi_dung(id),
    FOREIGN KEY (quoc_gia_id) REFERENCES quoc_gia(id),
    FOREIGN KEY (the_loai_id) REFERENCES the_loai(id)
);

CREATE TABLE IF NOT EXISTS phim_dien_vien (
    id INT AUTO_INCREMENT PRIMARY KEY,
    phim_id INT,
    dien_vien_id INT, 
    FOREIGN KEY (phim_id) REFERENCES phim(id),
    FOREIGN KEY (dien_vien_id) REFERENCES nguoi_dung(id)
);
INSERT INTO quoc_gia(tenQuocGia) VALUES('Việt Nam'),('Nhật Bản'),('Trung Quốc'),('Hàn Quốc'),('Lào'),('Campuchia'),('Malaysia'),('Ấn Độ'),('Mỹ'),('Nga'),('Thái Lan');
INSERT INTO the_loai(tenTheLoai) VALUES('Hài kịch'),('Kinh dị'),('Gia đình'),('Tình cảm'),('Học đường'),('Viễn tưởng'),('Hoạt hình'),('Tài Liệu');
INSERT INTO vai_tro(vai_tro) VALUES('Admin'),('Người dùng'),('Đạo diễn'),('Diễn viên');
INSERT INTO `nguoi_dung`(`ten_dang_nhap`, `mat_khau`, `tuoi`, `so_dien_thoai`, `email`, `vai_tro_id`) VALUES ('admin','123456','18','0868666666','admin123@gmail.com',1),
('ltan','123457','20','0943780076','2121051201@student.humg.edu.vn',2),
('nvan','123458','20','0943780076','2121051201@student.humg.edu.vn',2),
('lvanh','123459','21','0987351621','2121050104@student.humg.edu.vn',2),
('nndanh','123460','20','0815085168','2221050676@student.humg.edu.vn',3),
('pgiang','123456','20','0943780076','2121051201@student.humg.edu.vn',3),
('cquyen','123456','20','0943780076','2121051201@student.humg.edu.vn',3),
('phue','123456','20','0943780076','2121051201@student.humg.edu.vn',4),
('lele','123456','20','0943780076','2121051201@student.humg.edu.vn',4),
('tnga','123456','20','0943780076','2121051201@student.humg.edu.vn',4);
INSERT INTO phim( ma_phim, ten_phim, thoi_luong, nam, tuoi, dao_dien, link_phim, trailer, poster, noi_dung, mo_ta, quoc_gia_id, the_loai_id) VALUES 
('md','Mưa Đỏ',120,2025,18,3,'https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','','Nội dung Mưa đỏ là bản anh hùng ca bi tráng về 81 ngày đêm bảo vệ Thành cổ Quảng Trị năm 1972, khắc họa sự hy sinh anh dũng của các chiến sĩ và lòng yêu nước mãnh liệt của dân tộc. Tác phẩm đan xen giữa những trận đánh ác liệt với câu chuyện đời thường, tình đồng đội, tình yêu, và đặc biệt là tâm lý con người khi đối mặt với sự tàn khốc của chiến tranh.','Phim mưa đỏ 2025',1,8),
('ttl','Trần Tình Lệnh',50,2018,18,3,'https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','','Ngụy Vô Tiện và Lam Vong Cơ cùng điều tra những thế lực tà ác, dẫn đến âm mưu lớn chấn động tu chân giới.','Phim Trần Tình Lệnh 2018',3,6),
('kacvpe','Khi anh chạy về phía em',24,2023,15,3,'https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','','Câu chuyện tình thanh xuân nhẹ nhàng giữa cô nữ sinh hướng nội và chàng trai tỏa sáng như mặt trời.','Phim Khi anh chạy về phía em 2024',3,4),
('ddao','Địa Đạo',126,2025,16,3,'https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','','Địa Đạo Củ Chi kể về cuộc sống và chiến đấu gian khổ của du kích Củ Chi trong hệ thống địa đạo ngầm thời kháng chiến chống Mỹ. Bộ phim tái hiện tinh thần kiên cường, mưu trí và những hy sinh thầm lặng của quân dân nơi “vùng đất thép”.','Phim Địa Đạo 2025',1,8),
('conan','Conan',120,1994,13,3,'https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','','Câu chuyện xoay quanh Kudo Shinichi, thám tử trung học tài giỏi bị tổ chức Áo Đen cho uống thuốc APTX-4869 khiến cơ thể thu nhỏ thành một đứa bé','Phim Conan',2,7),
('enlt','Ê nhỏ lớp trưởng!',24,2018,18,3,'https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','','Phim kể về lớp 10A1 trường chuyên Hạo Nhiên, nơi tồn tại 2 phe: “phe nổi loạn” và “phe chăm ngoan”.','Phim Ê nhỏ lớp trưởng!',1,5),
('clvb','Cua lại vợ bầu',30,2020,15,3,'https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','','Cua Lại Vợ Bầu kể về hành trình dở khóc dở cười của Trọng Thoại khi cố gắng giữ lấy tình yêu với Nhã Linh giữa hiểu lầm và sự xuất hiện của người yêu cũ giàu có. Phim mang đến nhiều tiếng cười nhưng cũng chạm đến cảm xúc về trách nhiệm và giá trị gia đình.','Phim Cua Lại Vợ Bầu',1,1),
('thecon','The Conjuring',120,2025,18,3,'https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','','Phim kể về một gia đình gặp phải những hiện tượng ma ám đáng sợ tại ngôi nhà nông thôn, buộc họ phải nhờ đến sự giúp đỡ của các chuyên gia để đối mặt với thế lực hắc ám.','Phim The Conjuring 2025',9,2),
('avt','Avatar (2009)',120,2009,18,3,'https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','','kể về hành tinh Pandora nơi con người khai thác tài nguyên và xung đột với người bản địa Na’vi. Nhân vật chính Jake Sully nhập vào cơ thể Avatar và dần hiểu, đồng cảm với văn hóa Na’vi, từ đó dẫn đến cuộc chiến bảo vệ hành tinh khỏi sự tàn phá của con người.','Phim Avatar (2009)',9,6);




CREATE DATABASE IF NOT EXISTS quanly_phim;
USE quanly_phim;
CREATE TABLE IF NOT EXISTS vai_tro (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vai_tro VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS nguoi_dung (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ten_dang_nhap VARCHAR(30),
    mat_khau VARCHAR(255),
    tuoi INT,
    so_dien_thoai VARCHAR(10),
    email VARCHAR(50),
    vai_tro_id INT,
    FOREIGN KEY (vai_tro_id) REFERENCES vai_tro(id)
);

CREATE TABLE IF NOT EXISTS the_loai (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tenTheLoai VARCHAR(40)
);

CREATE TABLE IF NOT EXISTS quoc_gia (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tenQuocGia VARCHAR(30)
);

CREATE TABLE IF NOT EXISTS phim (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ma_phim VARCHAR(30),
    ten_phim VARCHAR(255),
    thoi_luong INT,
    nam INT,
    tuoi INT,
    dao_dien INT,
    link_phim VARCHAR(255),
    trailer VARCHAR(255),
    poster VARCHAR(255),
    noi_dung TEXT,
    mo_ta TEXT,
    quoc_gia_id INT,
    the_loai_id INT,
    FOREIGN KEY (dao_dien) REFERENCES nguoi_dung(id),
    FOREIGN KEY (quoc_gia_id) REFERENCES quoc_gia(id),
    FOREIGN KEY (the_loai_id) REFERENCES the_loai(id)
);

CREATE TABLE IF NOT EXISTS phim_dien_vien (
    id INT AUTO_INCREMENT PRIMARY KEY,
    phim_id INT,
    dien_vien_id INT, 
    FOREIGN KEY (phim_id) REFERENCES phim(id),
    FOREIGN KEY (dien_vien_id) REFERENCES nguoi_dung(id)
);
INSERT INTO quoc_gia(tenQuocGia) VALUES('Việt Nam'),('Nhật Bản'),('Trung Quốc'),('Hàn Quốc'),('Lào'),('Campuchia'),('Malaysia'),('Ấn Độ'),('Mỹ'),('Nga'),('Thái Lan');
INSERT INTO the_loai(tenTheLoai) VALUES('Hài kịch'),('Kinh dị'),('Gia đình'),('Tình cảm'),('Học đường'),('Viễn tưởng'),('Hoạt hình'),('Tài Liệu');
INSERT INTO vai_tro(vai_tro) VALUES('Admin'),('Người dùng'),('Đạo diễn'),('Diễn viên');
INSERT INTO `nguoi_dung`(`ten_dang_nhap`, `mat_khau`, `tuoi`, `so_dien_thoai`, `email`, `vai_tro_id`) VALUES 
('admin','123456','18','0868666666','admin123@gmail.com',1),
('ltan','123457','20','0943780076','2121051201@student.humg.edu.vn',2),
('nvan','123458','20','0943780076','2121051201@student.humg.edu.vn',2),
('lvanh','123459','21','0987351621','2121050104@student.humg.edu.vn',2),
('nndanh','123460','20','0815085168','2221050676@student.humg.edu.vn',3),
('pgiang','123456','20','0943780076','2121051201@student.humg.edu.vn',3),
('cquyen','123456','20','0943780076','2121051201@student.humg.edu.vn',3),
('phue','123456','20','0943780076','2121051201@student.humg.edu.vn',4),
('lele','123456','20','0943780076','2121051201@student.humg.edu.vn',4),
('tnga','123456','20','0943780076','2121051201@student.humg.edu.vn',4);
INSERT INTO phim( ma_phim, ten_phim, thoi_luong, nam, tuoi, dao_dien, link_phim, trailer, poster, noi_dung, mo_ta, quoc_gia_id, the_loai_id) VALUES 
('md','Mưa Đỏ',120,2025,18,3,'https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','','Nội dung Mưa đỏ là bản anh hùng ca bi tráng về 81 ngày đêm bảo vệ Thành cổ Quảng Trị năm 1972, khắc họa sự hy sinh anh dũng của các chiến sĩ và lòng yêu nước mãnh liệt của dân tộc. Tác phẩm đan xen giữa những trận đánh ác liệt với câu chuyện đời thường, tình đồng đội, tình yêu, và đặc biệt là tâm lý con người khi đối mặt với sự tàn khốc của chiến tranh.','Phim mưa đỏ 2025',1,8),
('ttl','Trần Tình Lệnh',50,2018,18,3,'https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','','Ngụy Vô Tiện và Lam Vong Cơ cùng điều tra những thế lực tà ác, dẫn đến âm mưu lớn chấn động tu chân giới.','Phim Trần Tình Lệnh 2018',3,6),
('kacvpe','Khi anh chạy về phía em',24,2023,15,3,'https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','','Câu chuyện tình thanh xuân nhẹ nhàng giữa cô nữ sinh hướng nội và chàng trai tỏa sáng như mặt trời.','Phim Khi anh chạy về phía em 2024',3,4),
('ddao','Địa Đạo',126,2025,16,3,'https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','','Địa Đạo Củ Chi kể về cuộc sống và chiến đấu gian khổ của du kích Củ Chi trong hệ thống địa đạo ngầm thời kháng chiến chống Mỹ. Bộ phim tái hiện tinh thần kiên cường, mưu trí và những hy sinh thầm lặng của quân dân nơi “vùng đất thép”.','Phim Địa Đạo 2025',1,8),
('conan','Conan',120,1994,13,3,'https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','','Câu chuyện xoay quanh Kudo Shinichi, thám tử trung học tài giỏi bị tổ chức Áo Đen cho uống thuốc APTX-4869 khiến cơ thể thu nhỏ thành một đứa bé','Phim Conan',2,7),
('enlt','Ê nhỏ lớp trưởng!',24,2018,18,3,'https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','','Phim kể về lớp 10A1 trường chuyên Hạo Nhiên, nơi tồn tại 2 phe: “phe nổi loạn” và “phe chăm ngoan”.','Phim Ê nhỏ lớp trưởng!',1,5),
('clvb','Cua lại vợ bầu',30,2020,15,3,'https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','','Cua Lại Vợ Bầu kể về hành trình dở khóc dở cười của Trọng Thoại khi cố gắng giữ lấy tình yêu với Nhã Linh giữa hiểu lầm và sự xuất hiện của người yêu cũ giàu có. Phim mang đến nhiều tiếng cười nhưng cũng chạm đến cảm xúc về trách nhiệm và giá trị gia đình.','Phim Cua Lại Vợ Bầu',1,1),
('thecon','The Conjuring',120,2025,18,3,'https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','','Phim kể về một gia đình gặp phải những hiện tượng ma ám đáng sợ tại ngôi nhà nông thôn, buộc họ phải nhờ đến sự giúp đỡ của các chuyên gia để đối mặt với thế lực hắc ám.','Phim The Conjuring 2025',9,2),
('avt','Avatar (2009)',120,2009,18,3,'https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','','kể về hành tinh Pandora nơi con người khai thác tài nguyên và xung đột với người bản địa Na’vi. Nhân vật chính Jake Sully nhập vào cơ thể Avatar và dần hiểu, đồng cảm với văn hóa Na’vi, từ đó dẫn đến cuộc chiến bảo vệ hành tinh khỏi sự tàn phá của con người.','Phim Avatar (2009)',9,6);


CREATE DATABASE IF NOT EXISTS quanly_phim;
USE quanly_phim;
CREATE TABLE IF NOT EXISTS vai_tro (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vai_tro VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS nguoi_dung (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ten_dang_nhap VARCHAR(30),
    mat_khau VARCHAR(255),
    tuoi INT,
    so_dien_thoai VARCHAR(10),
    email VARCHAR(50),
    vai_tro_id INT,
    FOREIGN KEY (vai_tro_id) REFERENCES vai_tro(id)
);

CREATE TABLE IF NOT EXISTS the_loai (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tenTheLoai VARCHAR(40)
);

CREATE TABLE IF NOT EXISTS quoc_gia (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tenQuocGia VARCHAR(30)
);

CREATE TABLE IF NOT EXISTS phim (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ma_phim VARCHAR(30),
    ten_phim VARCHAR(255),
    thoi_luong INT,
    nam INT,
    tuoi INT,
    dao_dien INT,
    link_phim VARCHAR(255),
    trailer VARCHAR(255),
    poster VARCHAR(255),
    noi_dung TEXT,
    mo_ta TEXT,
    quoc_gia_id INT,
    the_loai_id INT,
    FOREIGN KEY (dao_dien) REFERENCES nguoi_dung(id),
    FOREIGN KEY (quoc_gia_id) REFERENCES quoc_gia(id),
    FOREIGN KEY (the_loai_id) REFERENCES the_loai(id)
);
ALTER TABLE phim ADD COLUMN ten_phim varchar(50);
CREATE TABLE IF NOT EXISTS phim_dien_vien (
    id INT AUTO_INCREMENT PRIMARY KEY,
    phim_id INT,
    dien_vien_id INT, 
    FOREIGN KEY (phim_id) REFERENCES phim(id),
    FOREIGN KEY (dien_vien_id) REFERENCES nguoi_dung(id)
);
INSERT INTO quoc_gia(tenQuocGia) VALUES('Việt Nam'),('Nhật Bản'),('Trung Quốc'),('Hàn Quốc'),('Lào'),('Campuchia'),('Malaysia'),('Ấn Độ'),('Mỹ'),('Nga'),('Thái Lan');
INSERT INTO the_loai(tenTheLoai) VALUES('Hài kịch'),('Kinh dị'),('Gia đình'),('Tình cảm'),('Học đường'),('Viễn tưởng'),('Hoạt hình'),('Tài Liệu');
INSERT INTO vai_tro(vai_tro) VALUES('Admin'),('Người dùng'),('Đạo diễn'),('Diễn viên');
INSERT INTO `nguoi_dung`(`ten_dang_nhap`, `mat_khau`, `tuoi`, `so_dien_thoai`, `email`, `vai_tro_id`) VALUES ('admin','123456','18','0868666666','admin123@gmail.com',1),
('ltan','123457','20','0943780076','2121051201@student.humg.edu.vn',2),
('nvan','123458','20','0943780076','2121051201@student.humg.edu.vn',2),
('lvanh','123459','21','0987351621','2121050104@student.humg.edu.vn',2),
('nndanh','123460','20','0815085168','2221050676@student.humg.edu.vn',3),
('pgiang','123456','20','0943780076','2121051201@student.humg.edu.vn',3),
('cquyen','123456','20','0943780076','2121051201@student.humg.edu.vn',3),
('phue','123456','20','0943780076','2121051201@student.humg.edu.vn',4),
('lele','123456','20','0943780076','2121051201@student.humg.edu.vn',4),
('tnga','123456','20','0943780076','2121051201@student.humg.edu.vn',4);
INSERT INTO phim( ma_phim, thoi_luong, nam, tuoi, dao_dien, link_phim, trailer, poster, noi_dung, mo_ta, quoc_gia_id, the_loai_id, ten_phim) VALUES 
('md',120,2025,18,3,'https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','','Nội dung Mưa đỏ là bản anh hùng ca bi tráng về 81 ngày đêm bảo vệ Thành cổ Quảng Trị năm 1972, khắc họa sự hy sinh anh dũng của các chiến sĩ và lòng yêu nước mãnh liệt của dân tộc. Tác phẩm đan xen giữa những trận đánh ác liệt với câu chuyện đời thường, tình đồng đội, tình yêu, và đặc biệt là tâm lý con người khi đối mặt với sự tàn khốc của chiến tranh.','Phim mưa đỏ 2025',1,8,'Mưa Đỏ'),
('ttl',50,2018,18,3,'https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','','Ngụy Vô Tiện và Lam Vong Cơ cùng điều tra những thế lực tà ác, dẫn đến âm mưu lớn chấn động tu chân giới.','Phim Trần Tình Lệnh 2018',3,6,'Trần Tình Lệnh'),
('kacvpe',24,2023,15,3,'https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','','Câu chuyện tình thanh xuân nhẹ nhàng giữa cô nữ sinh hướng nội và chàng trai tỏa sáng như mặt trời.','Phim Khi anh chạy về phía em 2024',3,4,'Khi anh chạy về phía em'),
('ddao',126,2025,16,3,'https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','','Địa Đạo Củ Chi kể về cuộc sống và chiến đấu gian khổ của du kích Củ Chi trong hệ thống địa đạo ngầm thời kháng chiến chống Mỹ. Bộ phim tái hiện tinh thần kiên cường, mưu trí và những hy sinh thầm lặng của quân dân nơi “vùng đất thép”.','Phim Địa Đạo 2025',1,8,'Địa Đạo'),
('conan',120,1994,13,3,'https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','','Câu chuyện xoay quanh Kudo Shinichi, thám tử trung học tài giỏi bị tổ chức Áo Đen cho uống thuốc APTX-4869 khiến cơ thể thu nhỏ thành một đứa bé','Phim Conan',2,7,'Conan'),
('enlt',24,2018,18,3,'https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','','Phim kể về lớp 10A1 trường chuyên Hạo Nhiên, nơi tồn tại 2 phe: “phe nổi loạn” và “phe chăm ngoan”.','Phim Ê nhỏ lớp trưởng!',1,5,'Ê nhỏ lớp trưởng!'),
('clvb',30,2020,15,3,'https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','','Cua Lại Vợ Bầu kể về hành trình dở khóc dở cười của Trọng Thoại khi cố gắng giữ lấy tình yêu với Nhã Linh giữa hiểu lầm và sự xuất hiện của người yêu cũ giàu có. Phim mang đến nhiều tiếng cười nhưng cũng chạm đến cảm xúc về trách nhiệm và giá trị gia đình.','Phim Cua Lại Vợ Bầu',1,1,'Cua lại vợ bầu'),
('thecon',120,2025,18,3,'https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','','Phim kể về một gia đình gặp phải những hiện tượng ma ám đáng sợ tại ngôi nhà nông thôn, buộc họ phải nhờ đến sự giúp đỡ của các chuyên gia để đối mặt với thế lực hắc ám.','Phim The Conjuring 2025',9,2,'The Conjuring'),
('avt',120,2009,18,3,'https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','https://youtu.be/BD6PoZJdt_M?si=M2FOLpr0Lz5L0zLK','','kể về hành tinh Pandora nơi con người khai thác tài nguyên và xung đột với người bản địa Na’vi. Nhân vật chính Jake Sully nhập vào cơ thể Avatar và dần hiểu, đồng cảm với văn hóa Na’vi, từ đó dẫn đến cuộc chiến bảo vệ hành tinh khỏi sự tàn phá của con người.','Phim Avatar (2009)',9,6,'Avatar (2009)');






