-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Фев 20 2021 г., 07:25
-- Версия сервера: 10.3.16-MariaDB
-- Версия PHP: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `laravelblog`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(7, 'nihil', 'nihil', '2020-12-25 11:54:41', '2020-12-25 11:54:41'),
(8, 'repellendus', 'repellendus', '2020-12-25 11:56:10', '2020-12-25 11:56:10'),
(9, 'officiis', 'officiis', '2020-12-25 11:56:10', '2020-12-25 11:56:10'),
(10, 'illum', 'illum', '2020-12-25 11:56:10', '2020-12-25 11:56:10'),
(11, 'hic', 'hic', '2020-12-25 11:56:10', '2020-12-25 11:56:10');

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(17, '2014_10_12_000000_create_users_table', 1),
(18, '2014_10_12_100000_create_password_resets_table', 1),
(19, '2020_12_14_132424_create_categories_table', 1),
(20, '2020_12_14_133228_create_tags_table', 1),
(21, '2020_12_14_133424_create_comments_table', 1),
(22, '2020_12_14_133452_create_posts_table', 1),
(23, '2020_12_14_133520_create_subscriptions_table', 1),
(24, '2020_12_14_135246_create_posts_tags_table', 1),
(25, '2020_12_22_062558_add_avatar_column_to_users', 2),
(26, '2020_12_23_034133_make_password_nullable', 3),
(27, '2020_12_23_174427_add_date_to_posts', 4),
(28, '2020_12_23_183229_add_image_to_posts', 5),
(29, '2020_12_25_173554_add_description_to_posts', 6);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `views` int(11) NOT NULL DEFAULT 0,
  `is_featured` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `date` date DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `content`, `category_id`, `user_id`, `status`, `views`, `is_featured`, `created_at`, `updated_at`, `date`, `image`, `description`) VALUES
(14, 'Aut ratione quia atque quae soluta quidem.', 'aut-ratione-quia-atque-quae-soluta-quidem', '<p>Et ex laudantium quaerat omnis fuga.</p>', 8, 1, 1, 36, 1, '2020-12-25 12:00:33', '2020-12-27 01:55:46', '2008-09-20', 'photo1.png', '<p><strong>Hello world</strong></p>'),
(15, 'Quo dolores est ea explicabo quasi ut minus.', 'quo-dolores-est-ea-explicabo-quasi-ut-minus', '<p>Laudantium dignissimos ut nam facilis.</p>', 7, 1, 1, 1804, 1, '2020-12-25 12:00:33', '2020-12-27 01:56:38', '2008-09-20', 'photo1.png', NULL),
(16, 'Recusandae numquam dolorem architecto aut eius.', 'recusandae-numquam-dolorem-architecto-aut-eius', '<p>Blanditiis laborum aspernatur voluptates atque aspernatur incidunt ut.</p>', 7, 1, 1, 1861, 1, '2020-12-25 12:00:33', '2020-12-27 02:25:46', '2008-09-20', 'photo1.png', NULL),
(17, 'Odio sunt repudiandae sed quidem ducimus.', 'odio-sunt-repudiandae-sed-quidem-ducimus', '<p>Sed ea ea non dolorem nihil eum dolorem.</p>', 11, 1, 1, 4590, 0, '2020-12-25 12:00:33', '2020-12-27 01:58:42', '2020-09-08', 'photo1.png', NULL),
(18, 'Ut occaecati beatae quo quibusdam quidem.', 'ut-occaecati-beatae-quo-quibusdam-quidem', '<p>Ipsa voluptate rerum autem quia.</p>', 9, 1, 1, 4991, 0, '2020-12-25 12:00:33', '2020-12-27 01:57:59', '2020-09-08', 'photo1.png', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `post_tags`
--

CREATE TABLE `post_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `post_tags`
--

INSERT INTO `post_tags` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 6, 10, NULL, NULL),
(2, 7, 10, NULL, NULL),
(3, 8, 9, NULL, NULL),
(4, 8, 10, NULL, NULL),
(5, 8, 11, NULL, NULL),
(6, 9, 9, NULL, NULL),
(7, 9, 10, NULL, NULL),
(8, 10, 9, NULL, NULL),
(9, 10, 10, NULL, NULL),
(11, 11, 9, NULL, NULL),
(12, 11, 10, NULL, NULL),
(13, 12, 10, NULL, NULL),
(14, 12, 11, NULL, NULL),
(15, 14, 13, NULL, NULL),
(16, 14, 15, NULL, NULL),
(17, 14, 16, NULL, NULL),
(18, 15, 16, NULL, NULL),
(19, 16, 17, NULL, NULL),
(20, 16, 20, NULL, NULL),
(21, 17, 12, NULL, NULL),
(22, 17, 19, NULL, NULL),
(23, 18, 15, NULL, NULL),
(24, 16, 16, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tags`
--

INSERT INTO `tags` (`id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(12, 'aut', 'aut', '2020-12-25 12:00:08', '2020-12-25 12:00:08'),
(13, 'voluptatem', 'voluptatem', '2020-12-25 12:00:08', '2020-12-25 12:00:08'),
(14, 'voluptatum', 'voluptatum', '2020-12-25 12:00:08', '2020-12-25 12:00:08'),
(15, 'illum', 'illum', '2020-12-25 12:00:08', '2020-12-25 12:00:08'),
(16, 'qui', 'qui', '2020-12-25 12:00:08', '2020-12-25 12:00:08'),
(17, 'dolores', 'dolores', '2020-12-27 00:07:53', '2020-12-27 00:07:53'),
(18, 'dolore', 'dolore', '2020-12-27 00:07:53', '2020-12-27 00:07:53'),
(19, 'ipsum', 'ipsum', '2020-12-27 00:07:53', '2020-12-27 00:07:53');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `is_admin`, `status`, `remember_token`, `created_at`, `updated_at`, `avatar`) VALUES
(30, 'Jonibek Khamroev', 'jonibek.khamroyev@mail.ru', NULL, '$2y$10$gf1QGO79MgJT2ukf4IgIgOM7lQzXF36J3ZuDUoFIGTbs3K8nDl2gW', 0, 0, NULL, '2020-12-27 13:12:39', '2020-12-27 13:12:40', NULL),
(31, 'John doe', 'test@test.com', NULL, '$2y$10$8Xu2bFo9Spxj53PstSfVc.DWiHhN1uR.JfklV0grGNGIm6OwMm2KS', 1, 0, NULL, '2020-12-27 13:47:06', '2020-12-28 12:50:02', 'xBroxDzwNu.jpeg');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
