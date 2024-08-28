-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 20, 2024 lúc 04:40 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `web_ban_hang1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_account`
--

CREATE TABLE `admin_account` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `pass_word` varchar(255) DEFAULT NULL,
  `full_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `number_phone` varchar(11) NOT NULL,
  `level_admin` int(1) NOT NULL,
  `banned` int(1) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `cookie` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_account`
--

INSERT INTO `admin_account` (`id`, `user_name`, `pass_word`, `full_name`, `email`, `address`, `number_phone`, `level_admin`, `banned`, `create_date`, `cookie`) VALUES
(1, 'admin', 'c4ca4238a0b923820dcc509a6f75849b', 'Babyboo', 'babyboo@gmail.com', 'Hà Nội', '0989714733', 1, 0, '2024-05-07 19:59:47', 'dOOb%bsppY8CEMZHNnCEr8MtkCx$3OXVsVaDeelCXlqNTCOKE&u7ni3#KMHI98lNn^bq5PUK5B38jyxxF@x6K8frRIMbf&hQABiCyP9KuFTDrviLZiIalU@Cu4&ftxT3Hiwmctdx88y4dbr2WtMsVK;1;1'),
(2, 'admin1', 'c4ca4238a0b923820dcc509a6f75849b', 'Babyboo', 'babyboo@gmail.com', 'Nam Định', '0779261152', 1, 0, '2024-05-07 01:41:17', 'FhYgycofcr^p^qN5DpQw#3dE7rmYGf3vo3zL9HUOvCFeI$S@W$C8v#8uLIUqr2BDQKzl^NEDN&mEqH1&dktQkg&$S&8MfyW@TQ9yoOQCMVs@LBEUoajY#fOCMS8$#ZzdQc8LSOfL^xe454S#yhrQSY;2;1'),
(3, 'admin2', 'c4ca4238a0b923820dcc509a6f75849b', 'Babyboo', 'babyboo@gmail.com', 'Quảng Ninh', '0921472741', 0, 0, '2024-05-08 11:09:26', 'Ryzu9FkgKRJQyoT8VciMnIOXzEwac^@dINkMCUsaXIvASsKnC^7TnWHSrFnCBq#g1V7Q4ULi8hNnn5WYrKXX4u2xA#54^mJDIX^rgefj@^mCETb@UUF@MX7lgHCa5d@OY3sqeBK&ave4UutU$NuHAf;3;0'),
(4, 'test', 'c4ca4238a0b923820dcc509a6f75849b', 'Ban', 'tthuong@gmail.com', 'ha noi', '0983634262', 1, 1, '2024-05-16 23:08:05', 'mhGvsG9O5^dXmIn#YBOeExG2ZhOyX$AQEJHyKGdGiYZ@QQB2cYTlCIi&WiNxPgWN8lYnoWlDBTdiqCOQarbIZt6bP5geDZJGkGsPbvtAmq23h6uGRRkBJ$3xmn9hrsg2uNy5BYs@Z8vFBfSfaekeUmmdPHOh4ZI7ZFbzni1MdDQ1n8olYiG4rRt$oZ7NQe&UYeY2GO4v');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `status_delete` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`, `slug`, `status`, `create_at`, `update_at`, `status_delete`) VALUES
(141, 'Thực phẩm cho bé', 'Thuc-pham-cho-be', 'Hiển Thị', '2024-05-10 07:05:24', '0000-00-00 00:00:00', 0),
(142, 'Đồ chăm sóc cho bé', 'Do-cham-soc-cho-be', 'Hiển Thị', '2024-05-10 07:08:28', '0000-00-00 00:00:00', 0),
(143, 'Đồ dùng cho bé', 'Do-dung-cho-be', 'Hiển Thị', '2024-05-10 07:08:37', '0000-00-00 00:00:00', 0),
(144, 'Thời trang cho bé', 'Thoi-trang-cho-be', 'Hiển Thị', '2024-05-10 07:08:44', '0000-00-00 00:00:00', 0),
(145, 'Mỹ phẩm cho bé', 'My-pham-cho-be', 'Hiển Thị', '2024-05-10 07:08:51', '0000-00-00 00:00:00', 0),
(146, 'Đồ chơi cho bé', 'Do-choi-cho-be', 'Hiển Thị', '2024-05-10 07:09:16', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment_product`
--

CREATE TABLE `comment_product` (
  `id` int(11) NOT NULL,
  `id_product` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `name_user` varchar(255) NOT NULL,
  `content` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `comment_product`
--

INSERT INTO `comment_product` (`id`, `id_product`, `id_user`, `name_user`, `content`) VALUES
(18, 139, 43, 'Trần Hương', 'quá là xinhhh'),
(19, 121, 43, 'Trần Hương', 'rất ngon\n'),
(20, 143, 43, 'Trần Hương', 'rất tiện lợi'),
(21, 127, 43, 'Trần Hương', 'rất hiệu quả\n'),
(22, 125, 43, 'Trần Hương', 'quá thơmm'),
(23, 155, 43, 'Trần Hương', 'mùi thơm\n'),
(24, 121, 44, 'Quốc Huy', 'giao hàng nhanh\n'),
(25, 139, 44, 'Quốc Huy', 'hàng chất lượng'),
(26, 157, 44, 'Quốc Huy', 'chất lượng'),
(27, 159, 44, 'Quốc Huy', 'hayyy\n'),
(28, 148, 44, 'Quốc Huy', 'váy đẹp\n'),
(29, 156, 44, 'Quốc Huy', 'rất hiệu quả\n'),
(30, 153, 44, 'Quốc Huy', 'mùi thơm\n'),
(31, 122, 45, 'Thanh Thảo', 'rất tốt\n'),
(32, 123, 45, 'Thanh Thảo', 'ngonnn'),
(33, 128, 45, 'Thanh Thảo', 'rất hiệu quả\n'),
(34, 162, 45, 'Thanh Thảo', 'hay'),
(35, 148, 45, 'Thanh Thảo', 'màu xinh quá\n');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `order_id` int(11) NOT NULL,
  `name_product` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `unit_price` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`order_id`, `name_product`, `product_id`, `quantity`, `unit_price`) VALUES
(125, 'Sữa Morinaga Kodomil Cho Bé Từ 18 Tháng Tuổi (Nhật)', 125, 1, 237500),
(125, 'Bình Sữa Comotomo Silicone Baby Bottle - Pink 250ml', 139, 1, 333000),
(126, 'Đầm váy thô ngắn tay bé gái Rabity', 148, 1, 399200),
(126, 'Bảng ghép hình phát triển trí não Fisher-Price Brilliant Basics', 159, 1, 531000),
(127, 'Kem dưỡng da cho bé Hipp Milk Lotion', 155, 2, 338300),
(128, 'Sữa tăng cân trẻ em Resource Junior 400g của Đức', 126, 2, 900000),
(128, 'Bàn bi lắc đá bóng mini Top Foosball', 162, 1, 841500),
(129, 'Túi váng sữa hoa quả nghiền Heinz Custard cho bé đến từ Úc', 123, 5, 332500),
(130, 'Bảng chữ cái hình quả táo Vtech cho bé', 157, 1, 600000),
(131, 'Đầm váy thô ngắn tay bé gái Rabity', 148, 1, 399200);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_product`
--

CREATE TABLE `order_product` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `total_mony` double DEFAULT NULL,
  `status_recieve` varchar(20) NOT NULL,
  `cancel_order` int(11) NOT NULL,
  `delete_order` int(11) NOT NULL,
  `id_personnel` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `order_product`
--

INSERT INTO `order_product` (`id`, `user_id`, `create_at`, `name`, `address`, `phone_number`, `status`, `total_mony`, `status_recieve`, `cancel_order`, `delete_order`, `id_personnel`) VALUES
(125, 43, '2024-05-10 17:32:05', 'Trần Hương', 'Thường Tín, Hà Nội', '0989714733', 'Đã Nhận Hàng', 605500, 'true', 0, 0, 1),
(126, 43, '2024-05-10 17:34:06', 'Trần Hương', 'Hà Nội', '0989714733', 'Đã Xử Lý', 965200, 'false', 0, 0, 1),
(127, 43, '2024-05-10 17:34:49', 'Trần Hương', 'Hà Nội', '0989714733', 'Chờ Xử Lý', 373300, 'false', 0, 0, NULL),
(128, 44, '2024-05-20 09:35:27', 'Quốc Huy', 'Nam Định', '0779261152', 'Đã Xử Lý', 1776500, 'false', 0, 0, 1),
(129, 44, '2024-05-20 09:36:12', 'Quốc Huy', 'Nam Định', '0779261152', 'Chờ Xử Lý', 367500, 'false', 0, 0, NULL),
(130, 45, '2024-05-20 09:38:27', 'Thanh Thảo', 'Quảng Ninh', '09237472313', 'Đã Nhận Hàng', 635000, 'true', 0, 0, 1),
(131, 45, '2024-05-20 09:39:12', 'Thanh Thảo', 'Quảng Ninh', '09237472313', 'Chờ Xử Lý', 434200, 'false', 0, 0, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `price` double DEFAULT NULL,
  `img_product` varchar(255) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `descrip` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `production_company` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `name_category` varchar(255) NOT NULL,
  `pay` int(11) NOT NULL,
  `sale_product` int(10) NOT NULL,
  `status_delete` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `name`, `price`, `img_product`, `quantity`, `descrip`, `production_company`, `create_at`, `update_at`, `category_id`, `name_category`, `pay`, `sale_product`, `status_delete`) VALUES
(121, 'Bột ăn dặm Heinz bổ sung dưỡng chất cho bé từ Anh quốc', 140000, 'bot an dam.jpg', 100, '- Chứa nhiều chất xơ tự nhiên hỗ trợ sự tăng trưởng của vi khuẩn đường ruột khỏe mạnh, thúc đẩy quá trình tiêu hóa của bé 4 tháng (loại 4 +) và dòng 7m (hơi lợn cợn cho bé nuốt và nhai tốt hơn)\r\n\r\n- Bột ăn dặm Heinz không chứa màu nhân tạo, và chất bảo quản.\r\n\r\nThành Phần: Bột (52%, gạo, ngô), rau (súp lơ, bông cải xanh, rau bina, hành tây, cà rôt, mỳ ý ....), sữa bột tách kem,protein, Canxi, Vitamin C, Vitamin E, Kẽm Sulfat, Sắt, Riboflavin, Vitamin B6 , Vitamin B12, Vitamin A, Vitamin D...', 'Heinz', '2024-05-10 07:13:04', '2024-05-10 17:07:05', 141, 'Thực phẩm cho bé', 0, 10, 0),
(122, 'Men vi sinh Raw Organic Probiotic hỗ trợ tiêu hóa cho trẻ em', 600000, 'men vi sinh.jpg', 200, 'Sản phẩm Men vi sinh Raw Organic Probiotic là sự kết hợp hoàn hảo giữa các vi sinh có lợi và chất xơ từ rau củ quả thiên nhiên, đáp ứng trọn vẹn hai nhu cầu trên của trẻ. \r\n\r\n                                                            \r\n\r\nThành phần chính:\r\n Chiết xuất chất xơ : lá cải xoăn, bắp cải tím, lá mùi tây, Brussels Sprout Juice, quả hạt tiêu xanh, dưa chuột, cần tây, tỏi, gừng, hành, súp lơ, măng tây. Các loại quả chuối, dâu, anh đào, mâm xôi đen, việt quất,củ cải đường, cà rốt, lá rau bi na, hoa  và thân bông cải xanh, cà chua,\r\n\r\nCác lợi khuẩn: Lactobacillus gasseri, Lactobacillus plantarum, Bifidobacterium lactis, Lactobacillus casei, Lactobacillus acidophilus', 'Garden of life', '2024-05-10 07:19:20', '0000-00-00 00:00:00', 141, 'Thực phẩm', 0, 10, 0),
(123, 'Túi váng sữa hoa quả nghiền Heinz Custard cho bé đến từ Úc', 70000, 'tui vang sua.jpg', 51, '- Là sản phẩm được sản xuất hoàn toàn từ Úc, với công thức hoa quả tươi sạch đảm bảo 100%. Các mẹ không còn phải lo hoa quả bị phun thuốc, hay bảo quản kém ảnh hưởng đến trẻ.\r\n\r\n- Heinz Custard làm từ trứng sữa có thành phần nguyên liệu hoàn toàn tự nhiên, chất béo dễ hấp thụ giúp bé mau lớn và khoẻ mạnh.\r\n\r\n- Heinz Custard Chứa sữa nguyên kem, bơ nhạt giúp bổ sung năng lượng cần thiết cho bé, giàu canxi tốt việc phát triển chiều cao.\r\n\r\n- Custard trứng sữa với hương vị thơm ngon, ngầy ngậy và ngọt vừa đủ. Đảm bảo bé nào cũng mê.\r\n\r\n- Đảm bảo ngon , bé nào cg nghiện luôn . Bé nào ko ăn đc hoa quả vì có vị hơi chua thì hãy tìm đến sản phẩm này . Thơm ngon ngọt , nhiều dinh dưỡng bổ sung thêm vào bữa phụ của bé .', ' Heinz ', '2024-05-10 07:23:32', '0000-00-00 00:00:00', 141, 'Thực phẩm', 5, 5, 0),
(124, ' Sữa PEDIASURE - Nga cho trẻ từ 1-10 tuổi', 600000, 'sua pediasure.jpg', 156, 'Thành phần của Pediasure Nga:\r\n Tinh bột ngô thủy phân, Sucrose, dầu thực vật (dầu canola, dầu hướng dương có oleic cao, dầu hướng dương), Protein từ sữa, maltodextrin, protein tách từ đậu nành, Fructo-Oligosaccharides (FOS), khoáng chất (cali citrate, natri citrate, muối kali của axit photphoric,cali chlorid, magie chlorid, canxi cacbonate, natri chlorid, muối magie của axit photphoric,Sắt III sulphat, kẽm sulphat, mangan sulphat, đồng sulphat, iot kali, Crom chlorid, muối magie của axit photphoric), hương liệu tổng hợp (vani), chất nhũ hóa: lecithin từ đậu nành, DHA từ dầu C.conii, cholin, các loại Vitamin (vitamin C, vitamin E, niacin, axit pantothenic, vitamin B1, vitamin B6, vitamin B2, vitamin A, axit folic, vitamin K, biotin, vitamin D3, vitamin B12), chất chống oxi hóa: askobyl palmitate, tuarin, inositol, carnitin, lactobacillus, chất chống oxi hóa: bột tocopherol.', 'Abbott', '2024-05-10 07:25:32', '0000-00-00 00:00:00', 141, 'Thực phẩm', 0, 10, 0),
(125, 'Sữa Morinaga Kodomil Cho Bé Từ 18 Tháng Tuổi (Nhật)', 250000, 'sua morinaga.jpg', 55, 'DHA, ARA có trong Sữa Morinaga Kodomil Cho Bé Từ 18 Tháng Tuổi (Nhật) được tạo lên bởi hàm lượng Omega 3, Omega 6 cao. Đây là dưỡng chất giúp hoàn thiện cấu trúc não, tăng cường khả năng quan sát và học hỏi tốt nhất cho bé.\r\n\r\n- Taurin, choline, axit foli', 'Morinaga ', '2024-05-10 07:26:53', '0000-00-00 00:00:00', 141, 'Thực phẩm', 1, 5, 0),
(126, 'Sữa tăng cân trẻ em Resource Junior 400g của Đức', 500000, 'sua tăng cân.png', 76, 'Đây là dòng sản phẩm chuyên dành cho những trẻ bị còi xương, suy dinh dưỡng, mới ốm dậy, biếng ăn, chậm lớn, mới phẫu thuật.. thuộc dòng sản phẩm Nestle Health Sceince nổi tiếng của Nestle. \r\nThuộc top những dòng sữa được bác sĩ khuyên dùng cho bé cần tăng cân cùng với  các dòng như  Pediasure,  Kid Essentials,Nutren Junior ...Bên trong sản phẩm này có chứa thành phần dinh dưỡng cao, giúp cung cấp nguồn năng lượng an toàn cho bé cưng nhà mình, giúp bé tăng cân đều đặn và tự nhiên.\r\n\r\nSữa tăng cân Resource Junior là giải pháp giải quyết đầy đủ các vấn đề đối với sức khỏe của suy dinh dưỡng và sự phát triển về trí não cho trẻ. Ngoài ra, còn có các thành phần quan trọng giúp các bé tăng cường hệ miễn dịch và phát triển từ nhận thức đến sự phát triển trí não', 'Nestle', '2024-05-10 07:57:16', '2024-05-10 17:01:33', 141, 'Thực phẩm cho bé', 2, 10, 0),
(127, 'Super DHA Blossom (Algal Oil) Úc cho trẻ trên 1 tháng tuổi', 150000, 'dha.jpg', 43, 'Như những bài viết trước shop có nói được nhìn thấy bé phát triển toàn diện là niềm hạnh phúc vô bờ của các cặp cha mẹ. Nên ngoài phát triền cơ thể ra chúng ta còn phải phát trí não và hệ miễn dịch chắc chắn cho trẻ nữa.\r\n\r\nChính vì thế chúng ta cần phải bổ sung lượng lớn DHA cho trẻ ngay từ khi còn nhỏ. DHA cần thiết cho sự phát triển của não bộ vì DHA chiếm tỉ lệ rất cao trong chất xám (tạo ra sự thông minh) và tạo ra độ nhạy của các neuron thần kinh, giúp dẫn truyền thông tin nhanh và chính xác. Vậy nên hôm nay shop Babyborn xin giới thiệu sản phẩm Super DHA Blossom (Algal Oil) Úc cho trẻ trên 1 tháng tuổi giúp tăng cường DHA giúp các có thể phát triển toàn diện.', 'Blossom', '2024-05-10 07:58:19', '0000-00-00 00:00:00', 141, 'Thực phẩm', 0, 0, 0),
(128, 'Vitamin D3 Dlux dạng xịt cho trẻ sơ sinh đến 3 tuổi', 150000, 'd3.jpg', 76, 'Vitamin D có dạng giọt và viên, nhỏ giọt thì hay bị quá liều hoặc viên con khó uống ....Loại xịt DLux này vô cùng tiện lợi 1 ngày chỉ xịt 1 lần, có thể nhờ ông bà hay bất kỳ ai xịt mà ko lo thừa vì xịt chuẩn 300IU không lệch được. Một vài nghiên cứu cho thấy bổ sung vitamin D theo dạng xịt có thể hiệu quả hơn so với dạng viên. Việc bổ sung thuốc bằng cách xịt trực tiếp vào miệng sẽ tăng khả năng hấp thu, hấp thu nhanh hơn so với cách bổ sung nhỏ giọt và uống. Bởi thuốc sẽ trực tiếp hấp thụ qua màng nhầy dưới lưỡi, bên trong má đi vào hệ thống máu, đảm bảo không bị mất qua quá trình hấp thụ.\r\n\r\nVitamin D3 Dlux có hương vị dâu tây tự nhiên là mùi vị bé yêu thích nên mẹ không quá khó khăn khi bổ sung cho bé. Có thể sử dụng kết hợp với sữa công thức.', 'Better you', '2024-05-10 08:07:31', '0000-00-00 00:00:00', 141, 'Thực phẩm', 0, 0, 0),
(129, 'Siro ho Prospan Pháp 100ml cho trẻ từ 2 tuổi - Thuốc ho', 180000, 'thuoc ho.jpg', 34, 'Thành phần và công dụng của Siro ho Prospan Pháp 100ml cho trẻ:\r\n- Được chiết xuất từ thảo dược quý lá thường xuân chuyên dùng chữa bệnh viêm phế quản, trị ho\r\n\r\n- Hỗ trợ giảm triệu chứng ho ở trẻ mà không phải dùng đến kháng sinh, có thể dùng được cho trẻ sơ sinh\r\n\r\n- Siro ho Prospan Pháp tác động theo cơ chế đồng thời làm long đờm và giãn phế quản, giúp đẩy bật dị vật trong đường hô hấp ra dễ dàng, từ đó làm giảm ho, tác động trực tiếp vào nguyên nhân gây ho nên hiệu quả và an toàn\r\n\r\n- Hương vị thơm nhẹ tự nhiên rất dễ uống', 'Prospan ', '2024-05-10 08:09:43', '0000-00-00 00:00:00', 141, 'Thực phẩm', 0, 5, 0),
(130, 'Thuốc nhỏ mũi Rhinotrophyl trị sổ mũi, viêm mũi, ngạt mũi.', 170000, 'thuoc nho mui.jpg', 54, 'Công dụng của Thuốc nhỏ mũi Rhinotrophyl trị sổ mũi, viêm mũi, ngạt mũi\r\n\r\n+ Thuốc nhỏ mũi Rhinotrophyl trị sổ mũi, viêm mũi, ngạt mũi chính là thuốc chuyên dụng chuyên trị các bệnh sổ mũi cho trẻ khi mắc phải các bệnh viêm mũi do cảm lạnh, viêm mũi dị ứng do thời tiết thay đổi, do môi trường hoặc trong trường hợp dị ứng phấn hoa hoặc lông thú nuôi trong nhà.\r\n\r\n+ Thuốc nhỏ mũi Rhinotrophyl trị sổ mũi, viêm mũi, ngạt mũi còn có tác dụng trị các bệnh ngạt mũi, chảy nước mũi lâu này thường gặp ở trẻ.\r\n\r\n+ Với công thức vượt trội Rhinotrophyl nhanh chóng làm thông thoáng mũi, giúp trẻ dễ thở hơn, cảm thấy dễ chịu hơn. Thuốc nhỏ mũi Rhinotrophyl trị sổ mũi, viêm mũi, ngạt mũi đặc biệt an toàn đối với trẻ nhỏ đã được các chuyên gia trong nước và quốc tế chứng minh và công nhận.\r\n\r\nThông tin sản phẩm: ', '', '2024-05-10 08:10:20', '0000-00-00 00:00:00', 141, 'Thực phẩm', 0, 10, 0),
(131, 'Gạc vệ sinh răng miệng trẻ em Baby Bro chính hãng Hàn Quôc', 105000, 'gac ve sinh.png', 23, 'Việc chăm sóc răng miệng cần phải bắt đầu ngay từ lúc trẻ sinh ra đời, trước cả khi những chiếc răng đầu tiên của chúng xuất hiện. Trong 6 tháng đầu đời, việc giữ nướu luôn luôn sạch sẽ, không bị các mảng bám hay vi khuẩn là tiền đề giúp những chiếc răng sữa của trẻ được mọc một cách chắc khỏe nhất, không bị mọc xô lệch ảnh hưởng đến cấu tạo thẩm mỹ hàm răng sau này của trẻ em. Tuy nhiên hiện nay, những biện pháp chăm sóc đang áp dụng cho trẻ em ở lứa tuổi này không đảm bảo đánh tan được các mảng bám, làm sạch hết vi khuẩn gây bệnh, dẫn đến việc viêm nhiễm nướu, lợi làm răng trẻ mọc xô, lệch, cũng như làm gây ra các bệnh về hô hấp, dị ứng … do vi khuẩn cho trẻ.\r\nGạc vệ sinh răng miệng trẻ em  Baby Bro - Sản phẩm nhập khẩu chính hãng Hàn Quốc chính là giải pháp bảo vệ răng miệng trẻ em một cách tối ưu - an toàn, tiện lợi với giá cả hợp lý; giúp con bạn có răng lợi khỏe mạnh ngay từ khi mới sinh.', 'Baby Bro', '2024-05-10 08:39:59', '0000-00-00 00:00:00', 142, 'Đồ chăm sóc', 0, 0, 0),
(132, 'Hút mũi Summer Infant(SM14524)', 89000, 'hut mui.jpg', 54, 'Hút mũi giúp hút sạch mũi bé một cách nhẹ nhàng, dễ dàng và không bị đau như cách vắt mũi truyền thống. ', 'Summer', '2024-05-10 08:40:37', '0000-00-00 00:00:00', 142, 'Đồ chăm sóc', 0, 0, 0),
(133, 'Sản phẩm đặc trị muỗi đốt và côn trùng cắn Muhi 50ml', 150000, 'tri muoi.jpg', 22, 'Công dụng của kem bội đặc trị muỗi đốt và côn trùng cắn Muhi\r\n+ Sản phẩm rất an toàn dùng được cho người lớn và trẻ nhỏ.\r\n\r\n+ Kem bội đặc trị muỗi đốt và côn trùng cắn Muhi được thiết kế dưới dạng lăn có dung tích 50 ml chứa các thành phần có tác dụng làm', 'Muhi', '2024-05-10 08:41:19', '0000-00-00 00:00:00', 142, 'Đồ chăm sóc', 0, 5, 0),
(134, 'Yếm máng ăn dặm Royalcare cho bé - Cao Su Mềm', 100000, 'yem.jpg', 34, 'Công dụng của Yếm máng ăn dặm Royalcare cho bé\r\n+ Yếm máng ăn dặm Royalcare cho bé được thiết kế tiện lợi; dùng đeo cổ làm yếm ăn cho bé; mặt trước có phần máng hứng tránh thức ăn rơi vãi khi bé tập ăn dặm; ăn cháo; ăn cơm; hoa quả.... tránh không dây bẩn ra quần áo của bé. Mẹ đỡ phải giặt nhiều đồ cho bé.\r\n\r\n+ Yếm máng ăn dặm Royalcare cho bé được làm từ chất liệu Silicon mềm mại; không có gờ cạnh nên đảm bảo tuyệt đối an toàn cho bé; tránh làm tổn thương da bé.\r\n\r\n+ Yếm có thể gấp; cuộn dễ dàng.\r\n\r\n+  Dễ dàng vệ sinh; chùi rửa sau khi sử dụng cho bé.\r\n\r\n+ Yếm ăn là vật dụng đơn giản nhưng lại rất quan trọng cho bé trong thời kỳ cho bé ăn dặm.', 'Royalcare ', '2024-05-10 08:42:00', '0000-00-00 00:00:00', 142, 'Đồ chăm sóc', 0, 10, 0),
(135, 'Bình muỗng ăn dặm cho bé Munchkin 4 Ounce Easy Squeezy Spoon 100ml', 219000, 'binh an dam.jpg', 79, 'Munchkin 4 Ounce Easy Squeezy Spoon có dung tích 100 ml, dành cho trẻ từ 4 thánh tuổi trở lên. Sản phẩm được thiết kế với những tính năng vô cùng tiện dụng, có nấc khóa để ngăn không cho thức ăn bị trào ra. Trên thân bình có in vạch thang đo giúp bạn dễ dàng kiểm soát lượng thức ăn mỗi khi pha bột cho bé. Chiếc nắp đóng bên ngoài giúp bảo vệ thìa khỏi bị vi khuẩn xâm nhập khi bé chưa dùng tới. Với Muỗng ăn dặm cho bé Munchkin 4 Ounce Easy Squeezy Spoon, bạn chỉ cần cho lượng thức ăn sữa hoặc bột vào trong bình,dốc ngược, bóp nhẹ để thức ăn dồn xuống thìa và cho bé ăn một cách dàng. Thìa được làm từ chất liệu đặc biệt nên rất mềm, các góc đều được làm tròn để không làm tổn thương miệng bé.', 'Munchkin', '2024-05-10 08:42:41', '2024-05-10 16:04:06', 142, 'Đồ chăm sóc cho bé', 0, 10, 0),
(136, 'Ghế ăn cho bé - Aricare Mastela Booster to Toddler Seat', 650000, 'ghe an dam.png', 95, 'Công dụng của Ghế ăn cho bé - Aricare Mastela Booster to Toddler Seat\r\n + Ghế ăn cho bé - Aricare Mastela Booster to Toddler Seat là model bán chạy nhất, được yêu thích nhất nay có thêm loại bọc đệm PVC mềm mại và êm ái giúp bé thoải mái hơn, không bị mỏi lưng, ê lưng khi ngồi ăn.\r\n\r\n+ Ghế ngồi ăn Aricare đệm PVC thiết kế màu xám nhẹ nhàng và trang nhã, sạch sẽ và dễ dàng làm vệ sinh. Sản phẩm thực sự là lựa chọn lý tưởng, giúp bé bước vào giai đoạn tập ăn.\r\n\r\n+ Ngoài ra, thiết kế miếng đệm bọc làm từ chất liệu PVC đảm bảo an toàn và bền đẹp.\r\n\r\n+ Đệm PVC có thể tháo rời khi không dùng tới, hoặc tháo ra để làm vệ sinh.\r\n\r\n+ Khay ăn thiết kế với kích thước rộng rãi nhất, thỏa sức bày đồ ăn, bình sữa và cả đồ chơi cho bé. Khay ăn có thể tháo rời khi cần thiết và có thể dùng trong máy rửa bát.', 'Mastela ', '2024-05-10 08:43:36', '0000-00-00 00:00:00', 142, 'Đồ chăm sóc', 0, 10, 0),
(137, 'Gặm nướu hình quả chuối (Nhật)', 180000, 'gam nuou.jpg', 46, 'Sản phẩm được làm bằng chất liệu nhựa cao cấp, vô cùng mềm dẻo và an toàn cho bé. Trọng lượng của chiếc gặm nướu này rất nhẹ, chỉ 19g giúp có thể cầm lên mà không làm mỏi tay bé.\r\n\r\nGặm nướu hình quả chuốisẽ là một giải pháp hữu hiệu để bé yêu nhà bạn cảm thấy dễ dàng hơn khi trải qua giai đoạn mọc những chiếc răng đầu đời.', 'KJC', '2024-05-10 08:44:31', '0000-00-00 00:00:00', 142, 'Đồ chăm sóc', 0, 5, 0),
(138, 'Núm ti giả Mickey của Pigeon', 180000, 'num ti gia.jpg', 253, 'Sản phẩm được làm từ chất liệu silicone siêu mềm và không chứa chất BPA, đảm bảo sức khỏe tuyệt đối cho bé. Khuyến khích sự phát triển tự nhiên, hỗ trợ vòm miệng và chỉnh nha cho bé, có kích thước phù hợp với miệng bé. Núm ngậm ti giả giúp cho bé yêu của chúng ta ngủ ngon hơn, cho bé cảm giác được vỗ về. Không chỉ có thế các nhà khoa học Nhật cũng chỉ ra rằng,  ngậm ti giả sẽ tránh được những trường hợp xấu xảy ra như khó thở do bé nằm sấp, hay nuốt phải dị vật khi ngủ.\r\n\r\n', 'Pigeon', '2024-05-10 08:45:10', '0000-00-00 00:00:00', 142, 'Đồ chăm sóc', 0, 10, 0),
(139, 'Bình Sữa Comotomo Silicone Baby Bottle - Pink 250ml', 370000, 'abc.jpg', 155, 'Bình Sữa Comotomo Silicone Baby Bottle - Pink - 8 oz được thiết kế sáng tạo, xuất phát từ hoạt động bú mẹ tự nhiên của bé. Thông thường bạn sẽ nghĩ rằng bình sữa phải là loại bình nhựa cứng giống như tất cả các loại chai, lọ và bình chứa khác. Tuy nhiên nó lại hoàn toàn đi ngược lại với tự nhiên. Do đó Comotomo đã sáng tạo ra loại bình có thân được làm bằng chất liệu silicon siêu mềm và nhẹ tựa như làn da của mẹ, giúp bé cảm thấy thoải mái nhất khi ăn. Ngoài ra, do bình có thân mềm nên mẹ cũng như bé có thể dễ dàng cầm nắm. Bình sữa của Comotomo được làm từ silicone y tế đạt tiêu chuẩn vệ sinh và chất lượng. Đây là chất liệu tốt nhất bạn có thể tìm thấy. Hơn thế nữa, silicone là chất chịu nhiệt cực tốt, do đó bạn có thể dễ dàng làm nóng chúng để khử trùng bằng nước sôi hoặc lò vi sóng một cách dễ dàng.', 'Comotomo ', '2024-05-10 08:53:05', '2024-05-10 16:14:39', 143, 'Đồ dùng cho bé', 1, 10, 0),
(140, 'Bình đựng sữa và nước NUK', 240000, 'binh nuk.jpg', 52, 'Bình sữa, bình nước mang thương hiệu NUK mang tiêu chuẩn hàng đầu Châu Âu được thiết kế với độ bền cao và không bám mỡ khi pha sữa, cách nhiệt tốt. Các hình họa tiết ngộ nghĩnh và những vạch đo thể tích rõ ràng, rất thuận tiện khi pha sữa. Có cổ rộng cổ hẹp cho các mẹ thoải mái lựa chọn theo mục đích và sở thích của mình.\r\n\r\nNếu muốn tìm cho bé nhà mình một loại bình sữa an toàn, có giá thành tốt và phù hợp với bé, mẹ nên chọn những sản phẩm bình sữa Nuk bằng nhựa hoặc bằng thủy tinh. Dòng sản phẩm Nuk có nhiều dung tích khác nhau cho mẹ lựa chọn như 120ml, 240ml, 300ml...\r\n\r\nNúm ty của bình sữa, binh nước Nuk được thiết kế dẹt, bầu dưới to, tia phun sữa hướng lên trên giúp giảm thiểu tối đa tình trạng sặc sữa cho bé yêu của bạn ngay cả khi bé vừa tập ti bình.\r\n\r\nBình NUK và núm ti NUK hoàn toàn được làm từ chất liệu không chứa BPA rất an toàn và phù hợp với với sức khỏe của trẻ nhỏ.', 'NUK ', '2024-05-10 08:53:52', '2024-05-10 16:23:51', 143, 'Đồ dùng cho bé', 0, 0, 0),
(141, 'Bình sữa Avent Flasche natur', 330000, 'binh sua avent.jpg', 32, 'Là một thương hiệu nổi tiếng thế giới và Việt Nam, bình sữa Avent Flasche natur từ lâu đã trở thành một trợ thủ đắc lực hỗ trợ cho các mẹ nuôi con nhỏ. Qủa thực không phải ngẫu nhiên mà nhiều bà mẹ tin tưởng chọn lựa Avent Flasche natur cho đứa con yêu thương, bé bỏng của mình. Những thông tin hữu ích từ bài viết dưới đây sẽ giúp các bạn có được cái nhìn thấu đáo về sản phẩm này.', 'Avent ', '2024-05-10 08:54:36', '2024-05-10 16:05:29', 143, 'Đồ dùng cho bé', 0, 10, 0),
(142, 'Dung dịch súc rửa, vệ sinh bình sữa dạng gói tiết kiệm Pigeon 700ml', 200000, 've sinh binh.jpg', 143, 'Dung dịch được điều chế 100% từ nguyên liệu thực phẩm là sản phẩm lý tưởng để vệ sinh bình sữa, dụng cụ đựng thức ăn, đồ chơi cho trẻ cũng như các loại rau quả. Công thức nhẹ nhàng sẽ không gây kích ứng da tay mẹ.\r\n\r\n Với các thành phền nước tinh khiết, Sodium Citrate, Alcohol, Propylene Glycol, Sucrose Laurate, Potassium Carbonate, Citric Acid, Sodium Benzoate. Dung dịch được điều chế từ những thành phần có nguồn gốc thực vật, không độc hại. Công thức đậm đặc giúp đánh bay các vết bẩn bám dai nhất,  loại bỏ vi khuẩn bám trên đồ dùng hoặc lượng thuốc trừ sâu còn đọng lại trong rau quả đến 99,99%.', 'Pigeon ', '2024-05-10 08:55:29', '2024-05-10 17:08:38', 143, 'Đồ dùng cho bé', 0, 10, 0),
(143, 'MÁY TIỆT TRÙNG BÌNH SỮA BABYMOOV BM01272', 1780000, 'may tiet trung.png', 79, 'Máy tiệt trùng bình sữa BabyMoovBM01272 được sản xuất trên dây truyền công nghệ tiên tiến bậc nhất của Pháp. Sản phẩm có khả năng tiệt trùng bình sữa cho trẻ với độ tiệt khuẩn lên tới 100%. Cách thức sử dụng máy rất đơn giản: sau khi rửa bình sữa xong, bạn cho bình, núm ti, vòng gen, vào máy, sau đó đóng nắp lồng lên trên và bật công tắc khởi động. Hệ thống máy hoạt động, làm nóng và bốc hơi nước xung quanh, trong ngoài bình sữa, khử sạch khuẩn trong bình. Sau một khoảng thời gian ngắn, mẹ đã có thể lấy bình ra và tiếp tục thực hiện các công việc pha sữa cho trẻ.', 'BABYMOOV ', '2024-05-10 08:56:17', '2024-05-10 16:26:45', 143, 'Đồ dùng cho bé', 0, 20, 0),
(144, 'Bộ 2 bình uống nước cho bé gái 18 tháng tuổi Philips Avent 340 ml', 499000, 'binh nuoc.jpg', 234, 'Chiếc bình có màu hồng cực kì cute cùng họa tiết ngộ nghĩnh, dễ thương là quà tặng tuyệt vời cho các công chúa nhỏ đáng yêu nhà bạn. Thang đo mực nước in rõ ràng trên bình giúp bạn dễ dàng kiểm soát được lượng nước uống hàng ngày của bé. Bình nước Philips Avent được làm từ loại nhựa cao cấp, đáp ứng tiêu chuẩn an toàn của thế giới, bình nước Philips là thương hiệu được tin dùng ở rất nhiều các quốc gia trên thế giới. Với thiết kế độc đáo giúp bé dễ dàng cho việc cầm nắm, vừa vặn với tay trẻ tiện dụng cho trẻ cách tự mình uống nước. Nắp xoắn Childproof cấu tạo đăc biệt, khi không dùng chiếc nắp này sẽ giúp dấu ống hút vào bên trong để giữ ống luôn sạch sẽ. Van chống rò rỉ, tràn ngay cả khi ống hút được bật lên miệng bình thì nước bên trong cũng sẽ không bị trào ra ngoài.', 'Avent ', '2024-05-10 09:05:27', '2024-05-10 17:05:54', 143, 'Đồ dùng cho bé', 0, 0, 0),
(145, 'Áo thun ngắn tay Mickey bé trai Rabity', 169000, 'ao thun nam.jpg', 97, '- Chất liệu 95% vải cotton và 5% spandex thoáng mát, co giãn và an toàn cho làn da của bé\r\n\r\n- Loại sản phẩm: Áo thun tay ngắn bé trai, áo bé trai\r\n\r\n- Phù hợp với bé trai cân nặng từ 25-34kg, từ 8-12 tuổi\r\n\r\n-Áo thun ngắn tay in hình Mickey bản quyền Dis', 'Rabity ', '2024-05-10 15:00:00', '0000-00-00 00:00:00', 144, 'Thời trang', 0, 0, 0),
(146, 'Quần short thô bé trai Mickey Rabity', 269000, 'quan short nam.jpg', 65, 'Nhóm sản phẩm: Quần bé trai; Quần short bé trai\r\nChất liệu: 95% cotton 5% spandex an toàn và thoáng mát cho da của bé\r\nSize: Phù hợp với bé trai cân nặng từ 15-21kg, từ 4-6 tuổi\r\nQuần short năng động, cho bé yêu thỏa sức vui chơi, với hình in Mickey bản q', 'Rabity', '2024-05-10 15:00:51', '0000-00-00 00:00:00', 144, 'Thời trang', 0, 10, 0),
(147, 'Bộ thun ngắn tay bé trai Mickey Rabity', 249000, 'bo thun nam.jpg', 85, '- Chất liệu 95% vải cotton và 5% spandex thoáng mát, co giãn và an toàn cho làn da của bé\r\n\r\n- Loại sản phẩm: Đồ bộ bé trai\r\n\r\n- Phù hợp với bé trai cân nặng từ 15-21kg, từ 4-6 tuổi\r\n\r\n- Bộ thun ngắn tay in hình Mickey bản quyền Disney, hình in sắc nét và', 'Rabity ', '2024-05-10 15:01:45', '0000-00-00 00:00:00', 144, 'Thời trang', 0, 10, 0),
(148, 'Đầm váy thô ngắn tay bé gái Rabity', 499000, 'vay nu.jpg', 155, 'Nhóm sản phẩm: Đầm váy bé gái, Đầm váy tay ngắn bé gái\r\nChất liệu: 95% cotton 5% spandex an toàn và thoáng mát cho da của bé\r\nSize: Phù hợp với bé gái cân nặng từ 18 - 25kg, từ 5 - 8 tuổi', 'Rabity', '2024-05-10 15:02:44', '0000-00-00 00:00:00', 144, 'Thời trang', 2, 20, 0),
(149, 'Áo thun cổ bẻ ngắn tay bé gái Rabity', 224100, 'ao thun nu.jpg', 36, 'Nhóm sản phẩm: Áo thun trẻ em; Áo thun bé gái\r\nChất liệu: 95% cotton 5% spandex an toàn và thoáng mát cho da của bé\r\nSize: Phù hợp với bé gái cân nặng từ 30-37kg, từ 10-14 tuổi', 'Rabity', '2024-05-10 15:03:42', '0000-00-00 00:00:00', 144, 'Thời trang', 0, 5, 0),
(150, 'Bộ thun ngắn tay bé gái Minnie Rabity', 269000, 'bo thun nu.jpg', 92, '- Chất liệu: 95% cotton và 5% spandex thấm hút và thoáng mồ hôi\r\n\r\n- Độ tuổi, cân nặng: phù hợp cho bé từ 4-6 tuổi, từ 15-21kg\r\n\r\n- Loại sản phẩm: Bộ thun bé gái, Bộ thun trẻ em\r\n\r\n- Bộ thun ngắn tay hình in cốc trà sữa đáng yêu cùng. Trang phục năng động', 'Rabity', '2024-05-10 15:04:34', '0000-00-00 00:00:00', 144, 'Thời trang', 0, 5, 0),
(151, 'Dầu gội đầu cho bé Hipp Shampon 200 ml', 130000, 'dau goi.jpg', 325, 'Hipp Shampon được biết đến là sản phẩm sữa tắm gội chung với tác dụng làm sạch hiệu quả, dịu nhẹ, chăm sóc thật nhẹ nhàng cho da, tóc còn mỏng manh và nhạy cảm của bé con của bạn.\r\n\r\nThành phần của Hipp Shampon được chiết xuất 100% từ thiên nhiên rất an toàn và mang lại những giây phút thư giãn khi tắm, bảo vệ làn da mỏng manh của trẻ nhỏ.\r\n\r\nCác thành phần có trong Hipp Shampon như: Aqua, Sorbitol, Sodium, Chloride, Sodium Carboxymethyl Betaglucan, Citric Acid, Parfum… mang lại cho bé làn da sạch khuẩn và mềm mại.', 'Hipp ', '2024-05-10 15:07:50', '0000-00-00 00:00:00', 145, 'Mỹ phẩm', 0, 5, 0),
(152, ' Sữa tắm cho bé Bübchen Baby Bad', 180000, 'sua tam.jpg', 83, 'Với mùi thơm dễ chịu và dịu nhẹ cùng với đó là đặc tính làm sạch tự nhiên, nuôi dưỡng da bé một cách hiệu quả… đây chính là những ưu điểm hoàn hảo hội tự trong sản phẩm sữa tắm cho bé Bübchen Baby Bad. Và những hệ ưu điểm vượt trội này có lẽ cũng chính là những công năng mà nhiều mẹ đang tìm kiếm cho 1 sản phẩm sữa tắm hoàn hảo dành cho con yêu của mình.', 'Bübchen ', '2024-05-10 15:08:43', '0000-00-00 00:00:00', 145, 'Mỹ phẩm', 0, 10, 0),
(153, 'Sữa tắm gội cho bé Aveeno Daily Care Baby Hair & Body Wash 300ml', 310000, 'sua tam goi (2).jpg', 153, 'Các dòng sản phẩm của Aveeno dành riêng cho các bé có làn da khô và hết sức nhạy cảm, sữa tắm gội cho bé Aveeno Daily Care Baby Hair & Body Wash 300ml cũng không ngoại lệ. Sản phẩm Aveeno sử dụng thành phần chủ yếu từ thiên nhiên nên rất lành tính, phù hợp với làn da mỏng manh, nhạy cảm của hầu hết tất cả trẻ em trên thế giới.', 'Aveeno ', '2024-05-10 15:11:54', '0000-00-00 00:00:00', 145, 'Mỹ phẩm', 0, 10, 0),
(154, 'Kem chống hăm Nivea baby bottom ointment', 150000, 'kem chong ham.jpg', 253, 'Giai đoạn phát triển từ 0 đến 2 tuổi của trẻ cần được quan tâm và chăm chút cẩn thận, bởi thời kỳ này mọi điều liên quan đến trẻ còn rất mỏng manh và non nớt mà sức đề kháng của bé lại chưa cao. Đây cũng chính là giai đoạn làn da của bé rất dễ bị ảnh hưởn', 'Nivea', '2024-05-10 15:12:32', '0000-00-00 00:00:00', 145, 'Mỹ phẩm', 0, 10, 0),
(155, 'Kem dưỡng da cho bé Hipp Milk Lotion', 199000, 'kem duong da.jpg', 54, 'Làn da của các bé rất mỏng mang và nhạy cảm, nên rất dễ bị khô, bong tróc, kích ứng mẩn ngứa ngay cả trong điều kiện thời tiết thông thường. Vì thế, làn da của bé cần được chăm sóc thật kỹ lưỡng bằng các sản phẩm có nguồn gốc thiên nhiên an toàn và đảm bảo và sản phẩm sữa dưỡng da Hipp Milk Lotion đã ra đời để thực hiện vai trò quan trọng trong việc bảo vệ làn da cho bé yêu của bạn.', 'Hipp ', '2024-05-10 15:13:34', '0000-00-00 00:00:00', 145, 'Mỹ phẩm', 2, 15, 0),
(156, 'Kem dưỡng da trị Chàm sữa, nẻ Dexeryl 250g', 220000, 'kem chong cham.jpg', 135, 'Làn da khô ráp,nứt nẻ vào mua đông khiến bạn có cảm giác khó chịu, cảm giác này sẽ tăng lên gấp bội với bé vì làn da mong manh nhạy cảm hơn người lớn. Đây là lúc bạn cần tới sự trợ giúp của người bạn Dexeryl. Được sản xuất trên dây chuyền công nghệ tiên tiến của Pháp với các thành phần hữu hiệu hỗ trợ điều trị các bệnh về da đều đã được kiểm định an toàn tại Pháp và được bảo quản theo phương pháp hiện đại nhất để giữ nguyên công dụng của các thành phần, Dexeryl được biết đến như một loại kem dưỡng ẩm lý tưởng để chăm sóc da khi thời tiết lạnh và hanh khô, phù hợp cho cả người lớn và trẻ em.\r\n\r\n', 'Dexeryl', '2024-05-10 15:14:16', '2024-05-10 17:09:44', 145, 'Mỹ phẩm cho bé', 0, 10, 0),
(157, 'Bảng chữ cái hình quả táo Vtech cho bé', 800000, 'bang chu cai.jpg', 89, 'Bảng chữ cái hình quả táo Vtech cho bé\r\nBảng chữ cái hình quả táo Vtech cho bé là sản phẩm đồ chơi thông minh với 26 chữ cái kèm hình ảnh, âm thanh sinh động giúp bé vừa học tập, vui chơi hiệu quả, an toàn.', 'Vtech', '2024-05-10 15:15:09', '0000-00-00 00:00:00', 146, 'Đồ chơi', 1, 25, 0),
(158, 'Sách điện tử Leap Frog Learning Friends 100 Words cho bé', 870000, 'sach dien tu.jpg', 97, 'Ngôi sao phát sáng dưới góc phải giúp mẹ dàng nhân biết Sách điện tử Leap Frog 100 words hoạt động hay không.\r\n\r\nKhám phá 12 Danh mục: Trong Sách điện tử Leap Frog 100 words có màu sắc rực rỡ này, các bạn học đã dạy hơn 100 từ phù hợp với lứa tuổi được chọn bởi các chuyên gia trong 12 chuyên mục bao gồm thú cưng, động vật, thực phẩm, giờ ăn, màu sắc, hoạt động, đối lập, bên ngoài, xe cộ, quần áo, cơ thể của tôi và trái cây của tôi .\r\n\r\nChọn Chế độ âm nhạc phát các bài hát và nhạc cụ hoặc Chế độ học tập hướng dẫn các hình dạng, màu sắc và hơn thế nữa. Bé có thể đứng và chơi hoặc khám phá trên sàn nhà. Giới thiệu trẻ em đến các chữ cái của bảng chữ cái và các âm thanh mà chúng tạo ra, giúp xây dựng vốn từ vựng và luyện tập các kỹ năng vận động tốt.', 'Leap Frog', '2024-05-10 15:16:11', '0000-00-00 00:00:00', 146, 'Đồ chơi', 0, 15, 0),
(159, 'Bảng ghép hình phát triển trí não Fisher-Price Brilliant Basics', 590000, 'bang ghep hinh.jpg', 55, 'Trẻ nhỏ có tính tò mò, thích tìm tòi còn cha mẹ có trách nhiệm giúp các con khơi nguồn sáng tạo bằng cách: chỉ bảo trong sách vở, hay tạo nguồn kiến thức từ những món đồ chơi hữu ích. Fisher-Price Brilliant Basics là một trò chơi hoạt động dưới dạng câu đố cho trẻ từ 12 tháng tới 6 tuổi, với 6 miếng ghép ngộ nghĩnh, màu sắc bắt mắt chắc chắn sẽ là một trò chơi hữu ích cho sự phát triển trí thông minh của trẻ.\r\n\r\nSản phẩm được bọc trong một chiếc hộp vuông vắn, phía mặt trước là bóng kính, ta có thể thấy được 6 miếng ghép hình ngôi nhà, con chó, con mèo, con ếch, con chim, và cả một hình trái tim dễ thương. Phía sau của hộp là những thông tin cơ bản của một sản phẩm: nơi xuất xứ, nguồn gốc, và cả những dòng hướng dẫn cách chơi những món đồ đó ra sao nữa.', ' Fisher-Price', '2024-05-10 15:17:30', '2024-05-10 17:04:39', 146, 'Đồ chơi cho bé', 1, 10, 0),
(160, 'Bộ chữ số Munchkin bằng xốp', 249000, 'bo chu so.jpg', 68, 'Bộ chữ số bằng xốp\r\n\r\nGồm 26 chữ cái (từ A đến Z) và 10 chữ số (từ 0 đến 9) nhiều màu sắc khác nhau. Có thể dính lên tường, xốp mềm bền, không độc.\r\n\r\n', 'Munchkin ', '2024-05-10 15:18:09', '0000-00-00 00:00:00', 146, 'Đồ chơi', 0, 5, 0),
(161, 'Bảng phi tiêu nhật bản', 50000, 'phi tieu.jpg', 69, 'Trò chơi phi tiêu truyền thống không chỉ trẻ em mà người lớn trên toàn thế giới đều yêu thích, hầu như không chiếm không gian trong gia đình bạn, trò chơi phi tiêu phù hợp với cả gia đình, mang lại những phút giây thư giãn thoải mái.\r\nBabyborn.vn xin giới', 'Dartsgame', '2024-05-10 15:18:57', '0000-00-00 00:00:00', 146, 'Đồ chơi', 0, 5, 0),
(162, 'Bàn bi lắc đá bóng mini Top Foosball', 990000, 'ban bi a.jpg', 75, 'Bi lắc Top Foosball là một bàn bóng đá mini cực vui và thú vị. Hãy thật tập trung và khéo léo ghi bàn vào lưới đối phương nhưng đừng quên phòng thủ thật tốt để bảo vệ lưới nhà mình nhé. Trong trò chơi này bạn hoàn toàn có thể lựa chọn chế độ chơi hai người hoặc chơi một mình.\r\n\r\nTrong Bàn bi lắc đá bóng mini Top Foosball, 2 đội màu vàng và đỏ, mỗi đội 2 hàng và mỗi hàng ba cầu thủ được sắp xếp so le với nhau. Với bộ đồ chơi này bé có thể tập chơi một mình, hay chơi cùng với một người bạn để tạo nên sự kịch tính và hấp dẫn cho trận đấu.', 'Top Foosball', '2024-05-10 15:19:39', '2024-05-10 16:02:54', 146, 'Đồ chơi cho bé', 1, 15, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `name_slider` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `slider_img` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `slider`
--

INSERT INTO `slider` (`id`, `name_slider`, `slider_img`, `create_at`, `update_at`, `status`) VALUES
(14, 'sls02', 'sls02.jpg', '2024-04-26 16:02:06', '0000-00-00 00:00:00', 'Hiển Thị'),
(15, 'sls03', 'sls03.png', '2024-04-26 16:02:17', '0000-00-00 00:00:00', 'Hiển Thị');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_account`
--

CREATE TABLE `user_account` (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `email_account` varchar(255) DEFAULT NULL,
  `pass_word` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `address_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `active_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user_account`
--

INSERT INTO `user_account` (`id`, `name`, `email_account`, `pass_word`, `phone_number`, `address_user`, `create_at`, `update_at`, `active_status`) VALUES
(43, 'Trần Hương', 'tthuongd7303@gmail.com', '59ec5983e698b882c1b306bf2ed88759', '0989714733', 'Thường Tín, Hà Nội', '2024-05-07 00:47:59', '0000-00-00 00:00:00', 'Hoạt Động'),
(44, 'Quốc Huy', 'quochuy@gmail.com', 'b8dc042d8cf7deefb0ec6a264c930b02', '0779261152', 'Nam Định', '2024-05-19 22:56:13', '0000-00-00 00:00:00', 'Hoạt Động'),
(45, 'Thanh Thảo', 'ltthao@gmail.com', 'bf32d197f35684b9c075b9eb9823ee0c', '09237472313', 'Quảng Ninh', '2024-05-19 23:01:21', '0000-00-00 00:00:00', 'Block');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin_account`
--
ALTER TABLE `admin_account`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comment_product`
--
ALTER TABLE `comment_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`),
  ADD KEY `id_user` (`id_user`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_id`,`product_id`);

--
-- Chỉ mục cho bảng `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_personnel` (`id_personnel`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user_account`
--
ALTER TABLE `user_account`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin_account`
--
ALTER TABLE `admin_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=568;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT cho bảng `comment_product`
--
ALTER TABLE `comment_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT cho bảng `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `user_account`
--
ALTER TABLE `user_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `comment_product`
--
ALTER TABLE `comment_product`
  ADD CONSTRAINT `comment_product_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `comment_product_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user_account` (`id`);

--
-- Các ràng buộc cho bảng `order_product`
--
ALTER TABLE `order_product`
  ADD CONSTRAINT `order_product_ibfk_1` FOREIGN KEY (`id_personnel`) REFERENCES `admin_account` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
