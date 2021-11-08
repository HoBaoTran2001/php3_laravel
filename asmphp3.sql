-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 25, 2021 lúc 06:13 PM
-- Phiên bản máy phục vụ: 10.4.18-MariaDB
-- Phiên bản PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `asmphp3`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluans`
--

CREATE TABLE `binhluans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Cao cấp', 'Thời cao cấp', '2021-08-07 01:59:42', '2021-08-07 01:59:42'),
(2, 'Thiêt bị điện tử', 'Công nghệ hiện đại', '2021-08-07 01:59:42', '2021-08-07 01:59:42'),
(3, 'Công nghệ', 'Công nghệ hiện đại 5.0', '2021-08-07 01:59:42', '2021-08-07 01:59:42'),
(4, 'Gia đình', 'Thời thượng', '2021-08-07 01:59:42', '2021-08-07 01:59:42'),
(5, 'Phụ kiện', 'Phụ kiện độc lạ', '2021-08-07 01:59:42', '2021-08-07 01:59:42'),
(6, 'Đồng hồ', 'Nam-Nữ', '2021-08-07 01:59:42', '2021-08-07 01:59:42'),
(7, 'Sản phẩm mới nhất', 'san-pham-moi-nhat', '2021-08-08 10:43:37', '2021-08-08 11:12:57'),
(9, 'the loai 11', 'the-loai-11', '2021-08-08 22:26:39', '2021-08-08 22:45:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `home_categories`
--

CREATE TABLE `home_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sel_categories` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `no_of_products` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `home_categories`
--

INSERT INTO `home_categories` (`id`, `sel_categories`, `no_of_products`, `created_at`, `updated_at`) VALUES
(1, '1,2,3,4,5', '10', '2021-08-10 03:05:54', '2021-08-08 21:48:24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lienhes`
--

CREATE TABLE `lienhes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `comment` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(22, '2014_10_12_000000_create_users_table', 1),
(23, '2014_10_12_100000_create_password_resets_table', 1),
(24, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(25, '2019_08_19_000000_create_failed_jobs_table', 1),
(26, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(27, '2021_08_06_062239_create_sessions_table', 1),
(28, '2021_08_06_082915_create_categories_table', 2),
(29, '2021_08_06_083000_create_products_table', 2),
(30, '2021_08_09_030003_create_home_categories_table', 3),
(31, '2021_08_10_172419_create_orders_table', 4),
(32, '2021_08_10_172656_create_order_items_table', 4),
(33, '2021_08_10_172728_create_shippings_table', 5),
(34, '2021_08_10_172802_create_transactions_table', 5),
(35, '2021_08_11_070517_create_lienhes_table', 6),
(36, '2021_08_11_070752_create_binhluans_table', 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `subtotal` decimal(8,2) NOT NULL,
  `tax` decimal(8,2) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `firstname` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `add` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `zipcode` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` enum('ordered','delivered','canceled') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'ordered',
  `is_shipping_different` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('tran52voi@gmail.com', '$2y$10$E7Zw6IkguGPTATFuk8Lpi.R.W8iErE6s4rXhqSBGw4nKedZkn1UXu', '2021-08-09 05:01:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `short_description` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `regular_price` decimal(8,2) NOT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `SKU` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `stock_status` enum('instock','outofstock') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `image` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `images` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `short_description`, `description`, `regular_price`, `sale_price`, `SKU`, `stock_status`, `featured`, `quantity`, `image`, `images`, `created_at`, `updated_at`, `category_id`) VALUES
(1, 'Tablet Samsung', 'tablet-samsung', 'Thiết kế tinh xảo, độ mỏng khó tin-Luôn tràn đầy năng lượng', 'Samsung Kids \r\nVới thiết kế siêu mỏng, tính năng giải trí hấp dẫn và hiệu năng vượt trội\r\nSamsung Galaxy Lite sẽ là người bạn đồng hành đầy phong cách dành cho cuộc sống của bạn. Tha hồ học hỏi, khám phá, kết nối trong niềm cảm hứng của công nghệ.', '200000.00', NULL, 'DIGI01', 'instock', 0, 110, 'digital_01.jpg', NULL, '2021-08-01 07:21:47', '2021-08-03 07:21:56', 1),
(2, 'Di động abc', '\r\ndi-dong-abc', 'Thời lượng pin không chỉ lâu mà còn rất bền-Trải nghiệm mượt mà, chơi game hứng khởi', 'Xiaomi Redmi 9A thể hiện sự vượt trội trong phân khúc giá rẻ khi sở hữu màn hình lớn, thời lượng pin suốt cả ngày và cấu hình tuyệt đỉnh, mang đến cho bạn trải nghiệm thực sự hài lòng.\r\nThỏa sức khám phá trên màn hình lớn', '100000.00', NULL, 'DIGI02', 'instock', 0, 180, 'digital_02.jpg', NULL, '2021-08-15 07:22:03', '2021-08-31 07:22:12', 2),
(3, 'Samsung', 'samsung', 'Thiết kế tinh xảo, độ mỏng khó tin-Luôn tràn đầy năng lượng', 'Với thiết kế siêu mỏng, tính năng giải trí hấp dẫn và hiệu năng vượt trội, Samsung Galaxy Tab A7 Lite sẽ là người bạn đồng hành đầy phong cách dành cho cuộc sống của bạn. Tha hồ học hỏi, khám phá, kết nối trong niềm cảm hứng của công nghệ.\r\nThiết kế thanh lịch, màu sắc ấn tượng\r\n', '100000.00', NULL, 'DIGI03', 'instock', 0, 140, 'digital_03.jpg', NULL, '2021-08-01 07:22:14', '2021-08-03 07:22:17', 3),
(4, 'Di động ', 'di-dong ', 'Thời lượng pin không chỉ lâu mà còn rất bền-Trải nghiệm mượt mà, chơi game hứng khởi', 'Xiaomi Redmi A thể hiện sự vượt trội trong phân khúc giá rẻ khi sở hữu màn hình lớn, thời lượng pin suốt cả ngày và cấu hình tuyệt đỉnh, mang đến cho bạn trải nghiệm thực sự hài lòng.\r\nThời lượng pin không chỉ lâu mà còn rất bền', '100000.00', NULL, 'DIGI04', 'instock', 0, 100, 'digital_04.jpg', NULL, '2021-08-02 07:22:20', '2021-08-03 07:22:22', 4),
(5, 'Loa nhạc hay1', 'loa-nhac-hay1', 'Những model loa di động Loa nghe nhạc trăm triệu khảm vàng', 'Từng làm mưa làm gió trên thị trường âm thanh trong thời điểm ra mắt, Loa nghe nhạc trăm triệu khảm vàng Devialet Gold Phantom Opera De Paris sang trọng và cuốn hút từ cái tên. Với công suất cực khủng, mức giá thành, thiết kế độc đáo khiến giới chuyên gia và tín đồ yêu công nghệ âm thanh cao cấp luôn tò mò về dòng loa này. Hãy cùng Bảo Châu Elec khám phá chi tiết nhé !\r\nloa đại diện rộng thoải mái tiện nghi hay', '100000.00', NULL, 'DIGI05', 'instock', 0, 111, 'digital_05.jpg', NULL, '2021-08-06 07:22:30', '2021-08-08 07:22:34', 4),
(6, 'Laptop1', 'laptop1\r\n', 'Đảm bảo tốc độ tối đa\r\n-Hiệu năng cực đỉnh từ bộ vi xử lý AMD Ryzen 4000 series\r\n', 'Chiến thắng trong tầm tay\r\n-Laptop Lenovo IdeaPad Gaming 3 15ARH05 là chiếc laptop gaming giá rẻ mang trên mình rất nhiều điểm ấn tượng. Bộ vi xử lý AMD Ryzen 5 4600H 6 nhân 12 luồng, card rời GTX 1650 và một bàn phím tuyệt vời từ Lenovo, IdeaPad Gaming 3 chính là những gì game thủ đang mong đợi.\r\nHiệu năng cực đỉnh từ bộ vi xử lý AMD Ryzen 4000 series', '130000.00', NULL, 'DIGI06', 'instock', 0, 110, 'digital_06.jpg', NULL, '2021-08-03 07:22:37', '2021-08-04 07:22:39', 1),
(7, 'Loa nhạc hay', 'loa-nhac-hay', 'Loa nghe nhạc trăm triệu khảm vàng', 'Hai bên thiết bị được thiết kế tỉ mỉ giống 2 cánh được mạ vàng 22 cara cực kì sang trọng. Các lá vàng này sử dụng hợp kim vàng và Palladium chế tác bằng phương pháp mạ dầu. Loa được chế tác và lắp ráp hoàn toàn thủ công bởi bàn tay điêu luyện của những nghệ nhân ở Ateliers Gohard, Paris.\r\nloa đại diện rộng', '100000.00', NULL, 'DIGI07', 'instock', 0, 111, 'digital_07.jpg', NULL, '2021-08-02 07:22:42', '2021-08-03 07:22:44', 4),
(8, 'Laptop', 'laptop', '\r\nHiệu năng cực đỉnh từ bộ vi xử lý AMD Ryzen 4000 series\r\n', 'Laptop Lenovo IdeaPad Gaming 3 15ARH05 là chiếc laptop gaming giá rẻ mang trên mình rất nhiều điểm ấn tượng. Bộ vi xử lý AMD Ryzen 5 4600H 6 nhân 12 luồng, card rời GTX 1650 và một bàn phím tuyệt vời từ Lenovo, IdeaPad Gaming 3 chính là những gì game thủ đang mong đợi.\r\nĐảm bảo tốc độ tối đa', '190007.00', NULL, 'DIGI08', 'instock', 0, 120, 'digital_08.jpg', NULL, '2021-08-09 07:22:48', '2021-08-17 07:22:51', 3),
(9, 'IdeaPad Gaming', 'ideapad-gaming', 'Những chiếc laptop Lenovo luôn nổi tiếng về độ nhạy và cảm giác thoải mái trên bàn phím. Lenovo IdeaPad Gaming 3 15ARH05 sở hữu bàn phím đầy đủ với các phím bấm lớn, thiết kế mũ lõm công thái', 'Những bộ vi xử lý mạnh mẽ từ AMD đang được các game thủ săn đón, đặc biệt là những con chip thuộc thế hệ Ryzen 4000 series mới nhất. Lenovo IdeaPad Gaming 3 15ARH05 trang bị AMD Ryzen 5 4600H, bộ vi xử lý cực mạnh với 6 lõi 12 luồng, tốc độ 3.0 – 4.0GHz và đặc biệt là sản xuất trên tiến trình 7nm vô cùng tiên tiến. Sở hữu nhiều nhân và tiến trình 7nm giúp hiệu năng đa luồng của Ideapad Gaming 3 cực mạnh, không chỉ giúp chơi game tốt mà khả năng đồ họa, dựng video cũng rất đỉnh.\r\nBạn cũng có thể nâng cấp thêm RAM và bộ nhớ dễ dàng nếu có nhu cầu.', '100000.00', NULL, 'DIGI09', 'instock', 0, 180, 'digital_09.jpg', NULL, '2021-08-02 07:39:51', '2021-08-06 07:39:51', 4),
(10, 'cứng cáp', 'cung-cap', 'có viền cạnh siêu mỏng, tạo hiệu ứng thị giác hấp dẫn khi hình ảnh dường như nổi lên khỏi màn hình. Hãy thử tưởng tượng các nhân vật trong game của bạn ', 'Loa Devialet Gold Phantom Opera de Paris là một siêu loa không dây với công suất khủng khiếp lên tới 4500W. Cấu tạo 3 đường tiếng gồm 1 tweeter màng titan, 1 mid màng nhôm và 1 woofer màng nhôm cho khả năng tái tạo âm thanh hoàn hảo, không thua kém gì những chiếc loa đồ sộ, hoành tráng đằng sau thiết kế nhỏ gọn kia.\r\nđộ bền đáng kinh ngạc giúp Lenovo IdeaPad Gaming 3 15ARH05 luôn bền vững qua năm tháng.', '190000.00', NULL, 'DIGI10', 'instock', 0, 110, 'digital_10.jpg', NULL, '2021-08-01 07:39:51', '2021-08-02 07:39:51', 5),
(11, 'công nghệ sạc nhanh', 'cong-nghe-sac-nhanh', 'Chế tác từ kim loại với những đường nét phay xước mạnh mẽ, MSI Bravo 15 tạo cho bạn sự khí thế và niềm cảm hứng khi tham gia mỗi trận chiến game. ', 'Phantom De Opera vẫn được trang bị hybrid-amplifier Class A-D (ADH) tuy nhiên được nâng cấp thành chuẩn mới ADHV2. Thiết kế amplifier này sẽ làm việc tương tự với chuẩn Class A ở điều kiện thông thường, nhưng khi cần công suất cao hơn (ví dụ: nghe nhạc âm lượng lớn) thì amplifier sẽ tự chuyển sang chế độ Class D.\r\ncó thể đáp ứng hoàn hảo mọi nhu cầu của bạn, từ công việc cho đến chơi game.', '230003.00', NULL, 'DIGI11', 'instock', 0, 120, 'digital_11.jpg', NULL, '2021-08-23 07:39:51', '2021-08-31 07:39:51', 1),
(12, 'cổng kết nối', 'cong-ket-noi', 'bên cạnh đó bạn còn được trải nghiệm âm thanh vòm 3D cùng những thiết lập cấu hình âm thanh cho các tác vụ và thể loại âm nhạc khác nhau. lưới tản nhiệt, ', 'Card đồ họa rời có mặt trên Lenovo IdeaPad Gaming 3 15ARH05 là NVIDIA GeForce GTX 1650 4GB. Đây là card đồ họa được xây dựng trên kiến trúc NVIDIA Turing đột phá, cho trải nghiệm chơi game nhanh chóng, hiệu ứng đồ họa đẹp mắt. Tha hồ chơi game mượt mà trên chiếc laptop chơi game yêu thích, đặc biệt là những tựa game eSports phổ biến hiện nay\r\nmang tới tốc độ khung hình cao cho các tựa game, để bạn được tận hưởng trải nghiệm game mượt mà hơn bao giờ hết', '220300.00', NULL, 'DIGI12', 'instock', 0, 110, 'digital_12.jpg', NULL, '2021-08-02 07:39:51', '2021-08-06 07:39:51', 2),
(13, 'luôn ổn định', 'luon-on-dinh', 'kết hợp cùng quạt tản nhiệt để hoạt động hài hòa, giảm thiểu nhiệt cũng như tối ưu luồng khí', 'Đội ngũ nhân viên kinh nghiệm lâu năm tư vấn nhiệt tình, chuyên nghiệp, hướng dẫn sử dụng nhiệt tình.\r\n\r\nGiá thành sản phẩm luôn được cập nhật, tốt nhất thị trường.\r\n\r\nĐa dạng các hình thức thanh toán: trả góp với lãi suất thấp/ thanh toán COD, thanh toán qua thẻ, …\r\n\r\nMiễn phí giao hàng trong bán kính 30km, miễn phí setup, lắp đặt với đội ngũ kỹ thuật chuyên sâu, giao hàng toàn quốc, bảo hành tận nơi.\r\n mật nằm ở giải pháp tản nhiệt tiên tiến ', '112000.00', NULL, 'DIGI13', 'instock', 0, 110, 'digital_13.jpg', NULL, '2021-08-08 07:39:51', '2021-08-10 07:39:51', 3),
(14, 'Tản nhiệt hiệu quả \r\n', 'tan-nhiet-hieu-qua', 'trở thành sản phẩm hoàn hảo cho nhu cầu học tập, công việc. Hiệu năng mạnh mẽ, thiết kế mỏng nhẹ di động và đặc biệt là thời lượng pin lên tới 7 giờ đồng hồ giúp bạn có thể sử dụng laptop ở b', 'Những chiếc laptop Lenovo luôn nổi tiếng về độ nhạy và cảm giác thoải mái trên bàn phím. Lenovo IdeaPad Gaming 3 15ARH05 sở hữu bàn phím đầy đủ với các phím bấm lớn, thiết kế mũ lõm công thái học, hành trình phím 1,5mm tối ưu cho game thủ để bạn có thể thao tác nhanh và chính xác nhất, có được lợi thế trong những trận “chiến game” căng thẳng. Đèn nền màu xanh đầy phong cách sẽ giúp bạn chơi game tốt ngay cả khi trong phòng không có chút ánh sáng.\r\nđảm bảo luôn luôn ổn định, dù là bạn chơi game liên tục trong thời gian dài. Bí mật nằm ở giải pháp tản nhiệt tiên tiến', '110001.00', NULL, 'DIGI14', 'instock', 0, 110, 'digital_14.jpg', NULL, '2021-08-03 07:39:51', '2021-08-04 07:39:51', 4),
(15, 'ok cameraaaaa', 'ok-cameraaaaa', 'Mang đến chất lượng giao tiếp hình ảnh sắc nét trên độ phân giải Full HD', 'Webcam cho tầm nhìn bao quát tốt nhờ góc quan sát rộng 90 độ, ngang 360 độ\\r\\nThu giữ trọn vẹn không gian sau lưng bạn để hiển thị rõ ràng, bao quát qua màn hình webcam, giúp cho những cuộc đàm thoại video, trao đổi công việc, học tập online hay hội ngộ gia đình… trở nên hoàn hảo hơn. Màu đen hiện đại, kích thước nhỏ gọn, dễ dùng\\r\\n', '200000.00', NULL, 'DIGI15', 'instock', 0, 110, 'digital_15.jpg', NULL, '2021-08-07 13:40:34', '2021-08-08 13:40:34', 4),
(16, 'sự cứng cáp', 'su-cung-cap', 'có viền cạnh siêu mỏng, tạo hiệu ứng thị giác hấp dẫn khi hình ảnh dường như nổi lên khỏi màn hình. Hãy thử tưởng tượng các nhân vật trong game của bạn', 'Loa Devialet Gold Phantom Opera de Paris là một siêu loa không dây với công suất khủng khiếp lên tới 4500W. Cấu tạo 3 đường tiếng gồm 1 tweeter màng titan, 1 mid màng nhôm và 1 woofer màng nhôm cho khả năng tái tạo âm thanh hoàn hảo, không thua kém gì những chiếc loa đồ sộ, hoành tráng đằng sau thiết kế nhỏ gọn kia.', '190000.00', NULL, 'DIGI16', 'instock', 0, 133, 'digital_16.jpg', NULL, '2021-08-09 13:40:34', '2021-08-11 13:40:34', 2),
(17, 'camera news', 'camera-news', 'hệ thống camera gia đình hoàn chỉnh nhất', 'hệ thống camera gia đình hoàn chỉnh nhất\r\ncamera hệ thống lấp đặt gia đình\r\ncông nghệ hiện đại bật nhất \r\nmang tầm quốc tế hóa \r\ngiải quyết nhu cầu người dùng đòi hỏi ở các dòng sản phẩm trước đây \r\n1 cách hoàn chỉnh và chỉnh chu nhất', '200000.00', NULL, 'DIGI19', 'instock', 0, 199, 'digital_19.jpg', NULL, '2021-08-09 13:51:07', '2021-08-11 13:51:07', 4),
(18, 'thiet ke tinh te bat nhat', 'thiet-ke-tinh-te-bat nhat', 'Đánh giá công nghệ thích hợp\r\nNội dung đánh giá công nghệ', 'Phân tích được các quan niệm về đánh giá công nghệ;\r\n• Phân tích được đặc điểm, mục đích và nguyên tắc đánh giá công nghệ;\r\n• Trình bày được nội dung tổng quát trong đánh giá công nghệ;\r\n• Trình bày được khái niệm công nghệ thích hợp;\r\n• Phân tích được 4 định hướng lựa chọn công nghệ thích hợp. \r\n', '200000.00', NULL, 'DIGI20', 'instock', 0, 144, 'digital_18.jpg', NULL, '2021-08-10 14:01:44', '2021-08-12 14:01:44', 4),
(19, 'công nghệ về thiết kế', 'cong-nghe-ve-thiet-ke', 'CÁC QUAN ĐIỂM KHÁI QUÁT ĐÁNH GIÁ CÔNG NGHỆ', 'Đánh giá công nghệ là một dạng nghiên cứu chính\r\nsách nhằm cung cấp sự hiểu biết toàn diện về một\r\ncông nghệ hay một hệ thống công nghệ cho đầu vào\r\ncủa quá trình ra quyết định.\r\n• Đánh giá công nghệ là quá trình tổng hợp xem xét tác\r\nđộng giữa công nghệ với môi trường xung quanh nhằm\r\nđưa ra các kết luận về khả năng thực tế và tiềm năng\r\ncủa một công nghệ hay một hệ thống công nghệ.\r\n• Đánh giá công nghệ là việc phân tích định lượng hay\r\nđịnh tính các tác động của một công nghệ hay một hệ\r\nthống công nghệ đối với các yếu tố của môi trường\r\nxung quanh.', '200000.00', NULL, 'DIGI19', 'instock', 0, 188, 'digital_19.jpg', NULL, '2021-08-10 14:08:41', '2021-08-12 14:08:41', 3),
(20, 'Đánh giá công nghệ', 'danh-gia-cong-nghe', 'Đánh giá công nghệ để xác định tính thích hợp của công nghệ theo thứ tự ưu tiên, trên cơ sở đó để chuyển giao hay áp dụng công nghệ.', '\r\n• Đánh giá công nghệ để điều chỉnh và kiểm soát\r\ncông nghệ. Thông qua đánh giá công nghệ để nhận\r\nbiết các lợi ích và bất lợi của công nghệ.\r\n• Đánh giá công nghệ để xây dựng cơ sở dữ liệu về\r\ncông nghệ, làm đầu vào cho quá trình ra quyết định:\r\n Chấp nhận dự án tài trợ công nghệ?\r\n Triển khai hay mở rộng công nghệ đang hoạt động.\r\n Xác định thứ tự ưu tiên phát triển công nghệ theo từng giai đoạn, vv.', '200000.00', NULL, 'DIGI20', 'instock', 0, 133, 'digital_20.jpg', NULL, '2021-08-10 14:11:00', '2021-08-12 14:11:00', 2),
(21, 'ĐẶC ĐIỂM', 'dac-diem', ' Đánh giá công nghệ đề cập tới các yếu tố xung quanh công nghệ: Kinh tế, dân số, môi trường, đầu vào, văn hóa - xã hội, chính trị - pháp lý;', '\r\n• Đánh giá công nghệ phải xem xét tới các yếu tố tác động trực tiếp và gián tiếp;\r\n• Đánh giá công nghệ phải quan tâm tới nhiều nhóm người trong xã hội;\r\n• Đánh giá công nghệ liên quan tới nhiều bộ môn khoa học;\r\n• Đánh giá công nghệ phải cân đối nhiều mục tiêu, nhiều ràng buộc với các thứ nguyên khác\r\nnhau;\r\n• Đánh giá công nghệ mang đặc tính động, ...', '200000.00', NULL, 'DIGI21', 'instock', 0, 144, 'digital_21.jpg', NULL, '2021-08-10 14:14:19', '2021-08-12 14:14:19', 5),
(22, 'NGUYÊN TẮC', 'nguyen-tac', 'Nguyên tắc toàn diện\r\nĐặt công nghệ trong điều kiện phát triển chung cũng như bối cảnh xung quanh công nghệ', ' Nguyên tắc toàn diện\r\nĐặt công nghệ trong điều kiện phát triển chung cũng như bối cảnh xung quanh công nghệ\r\nnhằm cung cấp cho người ra quyết định hiểu được toàn bộ các mối quan hệ tương tác giữa\r\ncác khía cạnh của vấn đề được đánh giá.\r\n• Nguyên tắc khách quan\r\nĐòi hỏi khi đánh giá cần phải xem xét đến tất cả các vấn đề liên quan tới các nhóm lợi ích và\r\ncác quan điểm khác nhau.\r\n• Nguyên tắc khoa học\r\nPhải xem xét các yếu tố dựa trên cơ sở khoa học, không dựa trên kinh nghiệm đồng thời các\r\nkết quả của đánh giá phải sử dụng ngay được.', '240000.00', NULL, 'DIGI22', 'instock', 0, 155, 'digital_22.jpg', NULL, '2021-08-24 14:16:22', '2021-08-27 14:16:22', 2),
(23, '\r\nPhân tích chính sách', '\r\nphan-tich-chinh-sach', 'Mô tả công nghệ và phác thảo các phương án\r\nDự báo và đánh giá tác động\r\nPhân tích chính sách', 'Mức 1: Hình thành phương án được coi là tốt nhất, thiết lập tổ chức để thực hiện phương án.\r\nMức 2: Xem xét các vấn đề, các trở ngại còn tiềm tàng. Đề xuất giải pháp mới, có thể nằm\r\nngoài phạm vi đã giới hạn ở trên.', '240000.00', NULL, 'DIGI22', 'instock', 0, 199, 'digital_22.jpg', NULL, '2021-08-11 14:17:40', '2021-08-21 14:17:40', 4),
(24, 'Sản phẩm thời trang', 'san-pham-thoi-trang', 'Nem Fashion chủ yếu dành cho người từ 25 tuổi trở lên, mẫu mã, kiểu dáng chủ yếu dành cho môi trường như văn phòng, tiệc tùng hay đường phố.', 'Với Nem Fashion, một bộ trang phục đẹp là một bộ trang phục có chất liệu tốt, hoa văn hài hòa và thiết kế sáng tạo, vì quan điểm này, quần áo của Nem rất độc đáo và luôn trở thành tâm điểm. Mỗi khi bạn xuất bản bất kỳ bộ sưu tập. Các mặt hàng chính ở đây là váy, áo sơ mi, áo cánh, quần short hoặc một số loại áo khoác mùa đông, áo vest và váy dạ hội với thiết kế vô cùng sang trọng, toát lên sự quý phái cho người mặc. Ngoài ra, trong những năm gần đây, Nem còn cho ra mắt nhiều mẫu áo dài độc đáo, phục vụ phụ nữ trong các ngày lễ, mùa xuân và đám cưới, v.v., Nem Fashion cũng tài trợ trang phục cho nhiều chương trình truyền hình, đồng hành cùng các ngôi sao trong các bữa tiệc lớn, các sự kiện khác nhau, .. .', '200000.00', NULL, 'DIGI01', 'instock', 0, 155, 'fashion_01.jpg', NULL, '2021-08-09 14:25:24', '2021-08-11 14:25:24', 2),
(25, 'bộ sưu tập', 'bo-suu-tap', 'Đối với mỗi bộ sưu tập, Nem sẽ tập trung vào một chủ đề nhất định, chẳng hạn như một bộ sưu tập điển hình và được một số lượng lớn chị em ủng hộ, là bộ sưu tập áo dài cho ngày.\r\n\r\n', 'Ngoài bộ sưu tập streetwear, Nem còn nhắc nhở rất nhiều quý cô công sở trong những bộ trang phục vô cùng tinh tế, không chỉ có kiểu dáng đẹp mà đường may còn khéo léo che đi khuyết điểm eo. .thêm một vài phụ kiện đơn giản, bạn đã có thể tự tin bước đi', '100000.00', NULL, 'DIGI02', 'instock', 0, 145, 'fashion_02.jpg', NULL, '2021-08-11 14:25:24', '2021-08-13 14:25:24', 2),
(26, 'độc đáo  theo mùa', 'doc-dao-theo-mua', 'Phối màu độc đáo là điểm nhấn bắt mắt cho chiếc váy hoa này, chiết eo nhẹ nhàng giúp tôn lên vòng eo thanh tú', 'chiết eo nhẹ nhàng giúp tôn lên vòng eo thanh tú\r\nNgoài bộ sưu tập streetwear, Nem còn nhắc nhở rất nhiều quý cô công sở trong những bộ trang phục vô cùng tinh tế, không chỉ có kiểu dáng đẹp mà đường may còn khéo léo che đi khuyết điểm eo. .', '200000.00', NULL, 'DIGI03', 'instock', 0, 187, 'fashion_03.jpg', NULL, '2021-08-11 14:25:24', '2021-08-14 14:25:24', 5),
(27, 'những ngày hè ', 'nhung-ngay-he', 'Nem Fashion hiện có hơn 40 phòng trưng bày trên khắp các tỉnh và đã tạo được nhiều niềm tin ở khách hàng', 'Ngoài ra, trong những năm gần đây, Nem còn cho ra mắt nhiều mẫu áo dài độc đáo, phục vụ phụ nữ trong các ngày lễ, mùa xuân và đám cưới, v.v., Nem Fashion cũng tài trợ trang phục cho nhiều chương trình truyền hình, đồng hành cùng các ngôi sao trong các bữa tiệc lớn, các sự kiện khác nhau, .. .\r\n\r\nĐối với mỗi bộ sưu tập, Nem sẽ tập trung vào một chủ đề nhất định, chẳng hạn như một bộ sưu tập điển hình và được một số lượng lớn chị em ủng hộ, là bộ sưu tập áo dài cho ngày.\r\n\r\n', '190000.00', NULL, 'DIGI04', 'instock', 0, 188, 'fashion_04.jpg', NULL, '2021-08-17 14:25:24', '2021-08-19 14:25:24', 3),
(28, 'ELISE', 'elise', 'Việt Nam là Elise\r\nCho đến nay, Elise đã có gần 10 năm kinh nghiệm', 'Một cái tên phổ biến khác trong làng thương hiệu thời trang nữ Việt Nam là Elise. Cho đến nay, Elise đã có gần 10 năm kinh nghiệm trong việc thiết kế và cung cấp các sản phẩm thời trang chất lượng, độ phủ của thương hiệu cũng rất mạnh với số lượng chuỗi cửa hàng lên tới 95 trên khắp Việt Nam. Nam giới.', '210000.00', NULL, 'DIGI05', 'instock', 0, 155, 'fashion_05.jpg', NULL, '2021-08-09 14:25:24', '2021-08-19 14:25:24', 5),
(29, 'Khách hàng mục tiêu', 'khach-hang-muc-tieu', 'Khách hàng mục tiêu của Elise là phụ nữ ở độ tuổi 20-45, vì vậy ngoài việc thiết kế những set đồ mới và trẻ trung', 'Khách hàng mục tiêu của Elise là phụ nữ ở độ tuổi 20-45, vì vậy ngoài việc thiết kế những set đồ mới và trẻ trung, Elise còn tập trung vào việc làm nổi bật sự thanh lịch và sang trọng. trong mỗi bộ đồ. Vẫn là những món đồ chính như váy, váy, quần không tay, lửng hay áo sơ mi, áo cánh, nhưng Elise rất tinh tế và chủ động trong việc tách biệt rõ ràng các thiết kế và chọn họa tiết, họa tiết ngôi sao. để phù hợp với từng tình huống khác nhau như môi trường công ty, văn phòng, tham dự hội nghị, hội thảo hoặc đi dạo, tham dự các bữa tiệc ngoài trời, …', '180000.00', NULL, 'DIGI06', 'instock', 0, 133, 'fashion_06.jpg', NULL, '2021-08-11 14:25:24', '2021-08-18 14:25:24', 2),
(30, 'sản phẩm tại Elise', 'san-pham-elise', 'Là một thương hiệu nổi tiếng, giá sản phẩm tại Elise tương đối cao, dao động từ 400.000 đến 3.000.000 đồng cho một bộ mặt hàng', 'Mặc dù giá khá cao nhưng đổi lại, bạn sẽ sở hữu những bộ trang phục độc đáo và phù hợp, được thiết kế bởi các chuyên gia hàng đầu và được may bằng vải chất lượng cao và bền, đảm bảo tôn vẫn thoải mái. Mặc một bộ đồ như vậy không những không lo lắng về mốt mà còn giúp người mặc tự tin và nổi bật hơn, với rất nhiều ưu điểm, giá cả hơi đáng giá.', '100046.00', '99999.00', 'DIGI07', 'instock', 0, 134, 'fashion_07.jpg', NULL, '2021-08-11 14:25:24', '2021-08-13 14:25:24', 2),
(31, 'Lộng lẫy Thu Đông', 'long-lay-thu-dong', 'Elise cũng làm việc rất chăm chỉ để tổ chức một bữa tiệc bán hàng để cảm ơn khách hàng.\r\nMặc dù là một thương hiệu nổi tiếng', 'Là một thương hiệu nổi tiếng, giá sản phẩm tại Elise tương đối cao, dao động từ 400.000 đến 3.000.000 đồng cho một bộ mặt hàng. Mặc dù giá khá cao nhưng đổi lại, bạn sẽ sở hữu những bộ trang phục độc đáo và phù hợp, được thiết kế bởi các chuyên gia hàng đầu và được may bằng vải chất lượng cao và bền, đảm bảo tôn vẫn thoải mái. Mặc một bộ đồ như vậy không những không lo lắng về mốt mà còn giúp người mặc tự tin và nổi bật hơn, với rất nhiều ưu điểm, giá cả hơi đáng giá.', '150700.00', '130000.00', 'DIGI08', 'instock', 0, 144, 'fashion_08.jpg', NULL, '2021-08-10 14:25:24', '2021-08-12 14:25:24', 3),
(32, 'Độc đáo xu hướng ', 'doc-dao-xu-huong', 'Bữa tiệc lớn tại Elise\r\nĐộc đáo trên xu hướng mới lạ thiết kế\r\nĐẳng cấp', 'Khách hàng mục tiêu của Elise là phụ nữ ở độ tuổi 20-45, vì vậy ngoài việc thiết kế những set đồ mới và trẻ trung, Elise còn tập trung vào việc làm nổi bật sự thanh lịch và sang trọng. trong mỗi bộ đồ. Vẫn là những món đồ chính như váy, váy, quần không tay, lửng hay áo sơ mi, áo cánh', '140006.00', '120000.00', 'DIGI09', 'instock', 0, 112, 'fashion_09.jpg', NULL, '2021-08-15 14:25:24', '2021-08-17 14:25:24', 1),
(33, 'THỜI TRANG NEM', 'thoi-trang-nem', 'Lấy cảm hứng từ vẻ đẹp quyến rũ của thời trang Pháp, Nem Fashion được biết đến là một trong những thương hiệu thời trang độc đáo', 'Nem Fashion thương hiệu thời trang độc đáo, sáng tạo và đẹp nhất trong số các thương hiệu thời trang nữ nổi tiếng tại Việt Nam. Được thành lập vào năm 2002\r\nvới hơn 17 năm kinh nghiệm, Nem Fashion hiện có hơn 40 phòng trưng bày trên khắp các tỉnh và đã tạo được nhiều niềm tin ở khách hàng. Mỗi tháng, Nem ra mắt hơn 500 sản phẩm thời trang với mong muốn đáp ứng đầy đủ nhu cầu và thị hiếu ngày càng tăng của khách hàng.', '200000.00', '180000.00', 'DIGI10', 'instock', 0, 133, 'fashion_10.jpg', NULL, '2021-08-24 14:25:24', '2021-08-27 14:25:24', 5),
(34, 'san pham 122', 'san-pham-1', 'them tu admin', 'san ham dinh cao cong nghe', '200000.00', '18000.00', 'DIGI232', 'instock', 0, 121, '1628458756.jpg', NULL, '2021-08-08 14:39:16', '2021-08-11 04:15:47', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('IkrqWuipVKUelFRabOKIhqm7bb0oQ534D1X0czAi', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 Edg/92.0.902.67', 'YTo4OntzOjY6Il90b2tlbiI7czo0MDoiQkNNbm41NFNIMXhMaEVCenhqdncyc2JNRlNDVXQyVG81TzdCa1ZKbyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9zaG9wIjt9czo0OiJjYXJ0IjthOjI6e3M6ODoid2lzaGxpc3QiO086Mjk6IklsbHVtaW5hdGVcU3VwcG9ydFxDb2xsZWN0aW9uIjoxOntzOjg6IgAqAGl0ZW1zIjthOjA6e319czo0OiJjYXJ0IjtPOjI5OiJJbGx1bWluYXRlXFN1cHBvcnRcQ29sbGVjdGlvbiI6MTp7czo4OiIAKgBpdGVtcyI7YTowOnt9fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6NToidXR5cGUiO3M6MzoiQURNIjtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJG5oM2RLTFFZMUw4V1d3QXVPalNITXU0WXZ2MFQwWDc1dVo3bWg2Zm1ldUh2SmFXcVJqMkhlIjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCRuaDNkS0xRWTFMOFdXd0F1T2pTSE11NFl2djBUMFg3NXVaN21oNmZtZXVIdkphV3FSajJIZSI7fQ==', 1628680656),
('OXpCJdE3sLqmdpRzRBDfX1BDGt7UUsYHagqBtcN5', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 Edg/92.0.902.67', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMnJkMmFoWk5CZzZjdEFLZkozMjNxV1lWUEo0aWFFVTE1blJYYmtaYyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9zaG9wIjt9fQ==', 1628852906),
('S6FZmrAYP5AXAQ7AoNwrF6TEQrMpYuH4HGmmrera', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 Edg/92.0.902.67', 'YTo4OntzOjY6Il90b2tlbiI7czo0MDoicGtwMVpyckFodWkyV3VhZVZoUFhWM0wxNURxQkVhQnZrSVpNb0VxdCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9zaG9wIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjU6InV0eXBlIjtzOjM6IkFETSI7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRuaDNkS0xRWTFMOFdXd0F1T2pTSE11NFl2djBUMFg3NXVaN21oNmZtZXVIdkphV3FSajJIZSI7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkbmgzZEtMUVkxTDhXV3dBdU9qU0hNdTRZdnYwVDBYNzV1WjdtaDZmbWV1SHZKYVdxUmoySGUiO3M6NDoiY2FydCI7YToyOntzOjg6Indpc2hsaXN0IjtPOjI5OiJJbGx1bWluYXRlXFN1cHBvcnRcQ29sbGVjdGlvbiI6MTp7czo4OiIAKgBpdGVtcyI7YTowOnt9fXM6NDoiY2FydCI7TzoyOToiSWxsdW1pbmF0ZVxTdXBwb3J0XENvbGxlY3Rpb24iOjE6e3M6ODoiACoAaXRlbXMiO2E6MDp7fX19fQ==', 1628681178);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `add` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `zipcode` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `mode` enum('cod','card','paypal') COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('pending','approved','declined','refunded') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8_unicode_ci DEFAULT NULL,
  `utype` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'USR' COMMENT 'ADM for Admin for User or Custommer',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `utype`, `created_at`, `updated_at`) VALUES
(1, 'ho bao tran', 'baotranho1305@gmail.com', NULL, '$2y$10$nh3dKLQY1L8WWwAuOjSHMu4Yvv0T0X75uZ7mh6fmeuHvJaWqRj2He', NULL, NULL, 'wA2mKKY9EkTgw1HOAj90e1Wxz4XhNjx06do1DJsvb4LE0cgupBmNmQTgWxgn', NULL, NULL, 'ADM', '2021-08-07 02:05:34', '2021-08-07 02:05:34'),
(2, 'admin', 'tran52voi@gmail.com', NULL, '$2y$10$hy00eSf4qxQmPOzywmH27.gcq/fNUcuDny0btWTZrcMO1ElqazYia', NULL, NULL, 'xKrwBlZ6o8edH1xaYi3EmOpv1f9jh3g0WowZ0hO3X2B1XbuFteSh4jU76pOh', NULL, NULL, 'ADM', '2021-08-07 02:05:53', '2021-08-07 02:05:53'),
(3, 'useruser', 'user1@gmail.com', NULL, '$2y$10$H/zJr6g19OER3CbRGaXDn.GeKWtVsQve3XmrJv5rIfqGgk2wKYAyK', NULL, NULL, NULL, NULL, NULL, 'USR', '2021-08-07 02:07:48', '2021-08-07 02:07:48'),
(4, 'user 1', 'useruser@gmail.com', NULL, '$2y$10$u5TtfGzqlOEKCjSxYltQPeZ.nJrY6v87yNPfEVz7yeVcLmh73XI/m', NULL, NULL, 'DByPQxGHqyLMaDFijNJvqhEET2IN4un5amdjwc9bKF8Z1rYqMNHNGdL9VJOR', NULL, NULL, 'USR', '2021-08-07 02:08:20', '2021-08-07 02:08:20'),
(5, 'khach1', 'khach1@gmail.com', NULL, '$2y$10$iMR4dhVvy.kBLP/.PqqmOu5NqA3RVgA3VdehkRe4a1FsSwqIxE2Ny', NULL, NULL, NULL, NULL, NULL, 'USR', '2021-08-07 02:09:09', '2021-08-07 02:09:09');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `binhluans`
--
ALTER TABLE `binhluans`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `home_categories`
--
ALTER TABLE `home_categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `lienhes`
--
ALTER TABLE `lienhes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`) USING BTREE;

--
-- Chỉ mục cho bảng `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Chỉ mục cho bảng `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`),
  ADD KEY `transactions_order_id_foreign` (`order_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `binhluans`
--
ALTER TABLE `binhluans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `home_categories`
--
ALTER TABLE `home_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `lienhes`
--
ALTER TABLE `lienhes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4767;

--
-- AUTO_INCREMENT cho bảng `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
