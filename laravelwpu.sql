-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2023 at 03:23 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravelwpu`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `nama`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Web Programming', 'web-programming', '2023-10-12 17:33:34', '2023-10-12 17:33:34'),
(2, 'web Design', 'web-design', '2023-10-12 17:33:34', '2023-10-12 17:33:34'),
(3, 'Personal', 'personal', '2023-10-12 17:33:34', '2023-10-12 17:33:34');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_10_05_073750_create_posts_table', 1),
(6, '2023_10_06_020955_create_categories_table', 1),
(7, '2023_10_15_011740_add_is_admin_to_users_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `excerpt` text NOT NULL,
  `body` text NOT NULL,
  `published_at` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `image`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 'Nam nostrum exercitationem vero voluptatem facere sit reprehenderit.', 'eos-hic-ea-et', NULL, 'Magnam voluptatem laboriosam et. Vitae quibusdam rerum tempora. Ullam natus numquam repellat unde commodi eius. Nulla ipsum nihil velit suscipit modi. Dolore molestias aut quae magnam perspiciatis quia iste.', '<p>Provident enim numquam nihil inventore alias. Sit nesciunt expedita id voluptatem. Ipsam ipsa tempore quasi.</p><p>Minima vel hic sunt dolor explicabo in. Consequuntur cum possimus adipisci quisquam.</p><p>Ut optio delectus veritatis est esse esse. Asperiores voluptatem animi omnis corrupti eum odit. Corporis explicabo iusto tempore autem doloremque. Ullam illum illo labore aliquam nulla quibusdam. Aspernatur voluptate voluptatem ex qui in tempore sed.</p><p>Quo tenetur at et tenetur ipsa consequatur voluptas. Illo ut sed quia mollitia maiores. Maiores sequi odio sint tempore fuga optio ipsam aliquid. Earum mollitia aut consequatur consequatur minima necessitatibus sequi ab.</p><p>Ipsam corrupti et laborum ut laborum quidem rerum. Ullam aspernatur sed eos laboriosam nulla autem necessitatibus consectetur. Ut rem quasi sapiente reiciendis aperiam ad magni.</p><p>Sed atque amet non et repellendus maiores velit. Quas quia consectetur eius minima ipsam. Debitis id debitis inventore facilis qui repudiandae voluptatum ipsa.</p><p>Voluptas perferendis natus inventore aut. Fugit sapiente illum commodi aspernatur quidem.</p><p>Voluptate doloremque ea sit error soluta dolore pariatur. Ex nostrum perspiciatis et aliquam aut velit et. Sit officiis quis illum natus suscipit. Quod odio officiis et beatae.</p><p>Fugiat debitis eos voluptatum laborum. Sapiente officiis eum ut et distinctio qui et quia. Tempora repellendus aut vel aut et odio. Tempora voluptatem vel et dolor.</p><p>Est asperiores minima id cupiditate est. Tempora doloremque quam voluptate voluptatibus sunt nesciunt provident. Saepe explicabo perferendis enim sit.</p>', NULL, '2023-10-12 17:33:34', '2023-10-12 17:33:34'),
(2, 1, 1, 'Sint perferendis nihil dolores et eius deserunt mollitia.', 'dolore-voluptatem-voluptatem-beatae-rerum-consequatur-qui-eum', NULL, 'Ut laborum pariatur amet officiis dignissimos ut autem. Recusandae temporibus eos veritatis illum amet natus et. Ut quaerat quis neque at.', '<p>Nihil ab est dolore a. Sed commodi a et et officia ab deserunt aut. Autem beatae commodi doloremque aspernatur. Vel corporis quisquam dolor totam.</p><p>Explicabo est incidunt nam. Necessitatibus consectetur nobis qui ratione quia veniam ad quidem. Consequatur dolores iste quia quam omnis doloribus facilis qui.</p><p>Qui consequuntur vel qui iusto commodi omnis consectetur. Laudantium debitis voluptate laboriosam nesciunt nulla perspiciatis. Quia qui exercitationem corrupti. Praesentium non voluptatibus vitae.</p><p>Non distinctio vero sed. Quo saepe enim libero nihil inventore quos. Minima ut est est.</p><p>Ut cumque aperiam est esse sed ea. Corrupti perferendis quo quaerat consequatur iusto ut non provident. Dolorem dolores asperiores voluptatem ut sapiente voluptas.</p><p>Tenetur repudiandae at voluptas magni quam. Molestias consectetur animi velit ratione nulla exercitationem dicta placeat. Omnis perspiciatis consequatur fugit architecto quod est cumque. Et tempora hic molestias nisi et porro magnam.</p>', NULL, '2023-10-12 17:33:34', '2023-10-12 17:33:34'),
(3, 2, 1, 'Iusto in repellat est.', 'sit-omnis-fugit-qui-fuga-consectetur-rem-eveniet', NULL, 'Nesciunt necessitatibus blanditiis quisquam aperiam autem iusto. Nihil a voluptatum omnis.', '<p>Dolorum dolores sit nihil ex sint. Unde omnis ipsa sit dicta et atque. Reiciendis non provident atque dolores est. Accusamus provident enim quis non.</p><p>Fuga voluptatum non eaque impedit accusamus omnis officiis fuga. Est eius rem sed et sapiente recusandae. Fugit quisquam non et rerum soluta explicabo. Et aut voluptate iure enim a sed.</p><p>Enim sapiente magni laborum nihil. Veritatis illum omnis maiores ullam. Eum necessitatibus reprehenderit necessitatibus rem illum magnam. Voluptate aut et in vel. Rerum quia sunt accusantium quia ullam.</p><p>Ad pariatur illum reiciendis dicta sapiente quas nesciunt. Sit neque quasi quod nihil vel. Molestias maiores ut natus consequuntur debitis et ut. Ut debitis perferendis hic ut.</p><p>Placeat velit quam eius. Fugiat quo occaecati magni dignissimos minima error assumenda. Eveniet ut reiciendis necessitatibus quidem temporibus. Soluta vero qui ut sit laborum.</p><p>Quisquam vero voluptas et incidunt quia nihil velit aut. Ut nemo autem et facilis. Et quasi enim in est sed sapiente id. Quia molestiae assumenda et aut et voluptatem dolores.</p><p>Velit officiis molestias esse eveniet debitis voluptas aut. Dolorum fugit nihil ratione itaque harum distinctio. Ea molestiae id consequuntur dolorem sint. Numquam asperiores vitae ratione unde ipsam nulla.</p><p>Qui ullam sunt tenetur maiores maxime. Animi quia sunt reiciendis magnam voluptatem nulla. Rem illo fugiat a maiores aliquam maiores quod nihil.</p><p>Reprehenderit consequatur facere quia odio temporibus et. Cumque laudantium doloremque vel placeat. Eveniet praesentium tempora quidem earum et.</p><p>Iure consectetur distinctio quia voluptatem optio quia. Sint commodi sapiente commodi rerum. Reprehenderit cupiditate placeat quae aperiam ea incidunt veritatis sed. Est nam distinctio in.</p>', NULL, '2023-10-12 17:33:34', '2023-10-12 17:33:34'),
(4, 2, 3, 'Ipsa numquam et quidem blanditiis.', 'corrupti-ut-autem-harum-accusantium-velit-distinctio-saepe-et', NULL, 'Amet consequatur molestiae veniam aut tenetur ut consectetur. Mollitia blanditiis beatae dolores excepturi. Est voluptatibus quas repellat consequatur fuga eos omnis. Odit occaecati alias et non quisquam non.', '<p>Labore dolorem cumque commodi veniam qui sit sit. Sit id ad corporis eveniet nostrum atque autem.</p><p>Ab omnis veritatis perspiciatis nam eum nobis qui. Ea rerum sunt expedita quas unde doloremque. Consequatur quia in aut. Eaque distinctio suscipit deserunt tempora architecto natus cupiditate. Consectetur neque quisquam dolor voluptatem sapiente.</p><p>Accusamus eaque eaque quibusdam et nobis ullam. Voluptas ea maiores enim. Qui nihil occaecati labore optio deleniti aut fugit sequi.</p><p>Rem esse est dicta qui dignissimos sequi. Numquam odio dolore et accusamus quisquam. Distinctio quam quia a.</p><p>Nihil vel voluptas officia. Blanditiis quia eos cumque qui quasi. Consectetur rerum voluptas voluptatem excepturi quo accusantium.</p><p>Id omnis ipsum voluptatem id explicabo expedita voluptatum. Aut velit dolores quaerat. Quia magni et ut ullam. Soluta enim unde culpa.</p><p>Esse et ipsum commodi quia architecto. Aut sit cupiditate autem nostrum facilis. Neque recusandae quaerat dolor voluptates neque quo sit ab. Voluptas sint est dolorum aperiam dolorum at est.</p>', NULL, '2023-10-12 17:33:34', '2023-10-12 17:33:34'),
(5, 1, 1, 'Ut amet magni repudiandae dolorum at.', 'voluptatibus-reprehenderit-consequatur-vero-odit-qui-minus-aperiam', NULL, 'Quo laboriosam ratione culpa laudantium accusantium atque non. Possimus dolores sed nulla nesciunt voluptatem dolorem. Laboriosam temporibus recusandae facere inventore minima libero qui.', '<p>Hic iure aut et. Sit modi et doloribus nulla labore eum. Modi est sed ad quos.</p><p>Debitis assumenda labore saepe tempora. Sequi tempore rerum omnis. Vitae necessitatibus pariatur inventore aliquam tenetur nulla quidem. Ea itaque impedit quas nihil.</p><p>Error excepturi quaerat tempore vitae quia. Quia in exercitationem est ut deserunt architecto necessitatibus id. Consequatur nihil est soluta provident.</p><p>Facilis laborum blanditiis magnam dolores sit in doloribus. Harum quis ipsam reiciendis officiis illo deserunt omnis. Iure eum consequatur architecto labore eos quasi.</p><p>Quisquam quo aut omnis asperiores. Ipsum assumenda et soluta iusto repudiandae. Necessitatibus neque delectus officiis minus perspiciatis ipsam.</p><p>Iusto autem optio alias commodi quas. Ut est inventore blanditiis sunt officiis reprehenderit vero voluptas.</p><p>Ea in repudiandae ratione aperiam. Aliquid tenetur qui voluptatem cumque ex doloremque. Autem ea laudantium amet sequi dignissimos maiores harum repellendus.</p><p>Quia nisi libero neque sed repudiandae est. Impedit aspernatur quod eos illum eos aut sed. Tenetur omnis natus inventore est optio tempora ab. Veniam est quam molestias placeat et excepturi.</p><p>Labore voluptas inventore dignissimos et error minus blanditiis. Voluptatem unde facere voluptas voluptatum. Quasi exercitationem est sapiente sint. Similique quia sint quas quisquam. Dignissimos quis dolores ipsum ut cum.</p>', NULL, '2023-10-12 17:33:34', '2023-10-12 17:33:34'),
(6, 2, 1, 'Ut vel ut.', 'ullam-totam-reiciendis-fugit-voluptatem-dolor-velit-omnis', NULL, 'Voluptatem nihil dolores consequuntur sit dolorum est. Quaerat quasi et non aperiam eligendi quam.', '<p>Et culpa et harum animi sint nulla ea. Corporis impedit natus iste architecto voluptas in enim. Expedita ratione est recusandae autem earum veniam.</p><p>Dignissimos ipsa optio architecto perferendis magnam. Distinctio odit quam incidunt laboriosam. Pariatur commodi maxime consectetur et aliquid odit repellat. Laudantium optio et dolores.</p><p>Voluptas fuga ipsa beatae temporibus quasi sequi. Facere nobis et veniam voluptatum itaque temporibus. Eos quae nostrum sapiente nemo commodi. Atque placeat qui aperiam.</p><p>Repudiandae qui id dicta reiciendis eveniet. Fugiat asperiores nemo dolor voluptatem. Ut dolorum sit doloremque velit. Quo quam totam quo qui nam.</p><p>Quia quam et asperiores quas hic provident consectetur tempora. Sed minus optio reiciendis ratione. Alias quisquam quae molestiae. Ut aspernatur vel accusantium modi ea corporis.</p><p>Omnis ipsam ut totam odit assumenda alias et id. Porro illum adipisci ex rerum. Enim qui autem vel labore omnis nesciunt voluptatem. Sint hic deleniti iure et aspernatur non.</p><p>Asperiores eos error dignissimos voluptatem. Enim blanditiis eum sint ex est quam. Harum incidunt iusto et sed.</p><p>Nobis deserunt repellat consectetur culpa eligendi. Molestiae tempore quod non ut et omnis laborum. Et ea impedit ut molestias. Nam dolor fuga praesentium hic.</p><p>Quia id animi ea dolorem fugiat qui aut. Sequi harum dolorem excepturi magnam nam id dolor. Ea nobis repudiandae sunt optio.</p>', NULL, '2023-10-12 17:33:34', '2023-10-12 17:33:34'),
(7, 1, 3, 'Voluptas esse sunt nobis modi et nisi quaerat quo autem dolor.', 'magni-vel-nesciunt-sed-occaecati-ipsam-rerum-quae', NULL, 'Aut eum aut sit quo voluptate sit nulla. In totam qui pariatur cumque et adipisci. Recusandae voluptatem est dolores recusandae perspiciatis non sint. Doloribus sapiente optio nihil.', '<p>Non nesciunt autem velit et alias libero. Nesciunt vel possimus atque atque rerum veritatis aut quos. Aut sed saepe occaecati a aut laboriosam quaerat. Odio ullam labore voluptas cum. Esse dolorem quo inventore est cum suscipit.</p><p>Et dolorum at et et qui. Eos magnam impedit repellat cumque. Eaque eius mollitia est adipisci ut qui earum.</p><p>Numquam mollitia illum expedita fuga quam assumenda. Voluptatem natus vel corrupti magni laborum doloribus. Et distinctio accusamus ea necessitatibus minus. Veniam ut molestiae vero adipisci repellat eum.</p><p>Similique tenetur consequatur corrupti doloremque officiis deleniti doloremque. Distinctio non eos consequatur deleniti aliquam deserunt quae. Temporibus omnis et aut occaecati consequatur. Quis possimus dolorem alias asperiores eius enim.</p><p>Rerum veritatis aut rerum rerum vel architecto dolorum. Molestiae modi non autem aut. Voluptatem est aliquam sed vel. Et et nisi nam quae libero aut.</p><p>Autem accusantium voluptatibus et consectetur possimus dolorem. Neque qui in eos laborum.</p><p>Quam consequatur esse et blanditiis. Illum ut rem odio similique culpa cumque aut.</p><p>Sequi facere aut odio molestiae. Temporibus fugit est facilis est nemo autem aut. Doloremque est omnis laudantium velit eius alias quidem. Labore asperiores laudantium quia dolores inventore libero.</p>', NULL, '2023-10-12 17:33:34', '2023-10-12 17:33:34'),
(8, 2, 1, 'Qui laborum tempore corrupti placeat nobis.', 'necessitatibus-exercitationem-ut-excepturi-voluptatem-nihil-neque', NULL, 'Error omnis dolor sapiente illum odio et. Quo non est quos sequi nostrum alias. At dicta necessitatibus excepturi vero.', '<p>Rerum excepturi deleniti reprehenderit non repudiandae ut. Dignissimos explicabo sit et rerum nobis nihil. Aut aut ipsam laboriosam consequuntur enim provident.</p><p>Illo et et est nulla neque animi odit. Optio sint illo quod autem provident illum possimus. Unde est laboriosam debitis magni itaque mollitia quod.</p><p>Ut voluptatum expedita asperiores praesentium eos incidunt sed. Vel consequatur cupiditate aut est est esse dolorem fugiat.</p><p>Vitae est sed quisquam quidem minus non. Expedita assumenda adipisci in aliquam quia eligendi. Deserunt et repellendus ratione debitis quam neque ut. Voluptas et natus deserunt rem non vero beatae omnis.</p><p>Incidunt animi consequatur nihil rerum eos culpa consequuntur. Et illum ut in sapiente. Illo ut sunt veniam qui sequi debitis.</p><p>Sequi aut modi repellat non dolorem. Eius possimus laborum sunt nisi cum qui cumque reprehenderit. Sed repellendus fugit enim delectus. Praesentium odit voluptas nam nam optio et.</p><p>Deleniti perferendis molestiae beatae. Animi autem sequi dolore sunt nemo vitae repellat necessitatibus. Beatae fuga saepe laboriosam sit. Vero tenetur veritatis asperiores voluptate. Autem consequatur et deleniti veritatis in voluptatibus.</p><p>Nam nobis dolorem ullam sunt. Sit ut fugiat ipsam natus. Officia non explicabo ab ut tenetur nulla adipisci. Modi culpa facere ex sed.</p><p>Blanditiis ut debitis accusantium mollitia. Sint qui cumque unde rerum. Dignissimos non at unde velit. Minima nam repudiandae asperiores omnis provident.</p>', NULL, '2023-10-12 17:33:34', '2023-10-12 17:33:34'),
(9, 2, 2, 'Dolorum quasi voluptas magnam voluptatem vero enim et ut aliquam.', 'dolor-nisi-iste-sit-at-magni', NULL, 'Cupiditate sint in harum nulla. Repellat nisi ipsa perspiciatis sed et et delectus. Aliquam adipisci quia earum est ipsa sed ullam. Voluptas sequi aperiam earum id.', '<p>Consequatur corporis et sint perferendis nobis. Voluptas eum sed et aspernatur nihil est voluptates. Dicta dolores provident iste. Eos fuga delectus amet occaecati aut molestiae.</p><p>Tenetur nulla pariatur beatae et quaerat totam dolorum. Odio debitis sunt modi sit optio. Repellendus eveniet sit ex praesentium distinctio doloremque natus.</p><p>Et odio at cupiditate tempora animi consequatur. Quibusdam facilis corporis expedita dicta sed. Fuga animi vero earum ea et impedit. Temporibus nam sit explicabo eum mollitia iure quae.</p><p>Deserunt nisi repellendus quis architecto. Debitis ipsam dicta et architecto quia nam eius. Blanditiis aliquid velit et aperiam fugit dolorum sequi.</p><p>Quod et atque hic cupiditate sunt harum. Eum voluptate nesciunt eum eveniet. Reprehenderit animi et voluptatem velit.</p><p>Sapiente quasi saepe saepe vel doloremque tenetur. Amet perferendis quibusdam pariatur nihil. Non nobis iste cupiditate est consequatur. Sequi in sequi et temporibus maiores.</p><p>Ex esse inventore porro a dolorem aut sunt. Sequi in adipisci maxime vel voluptates. Ut accusantium totam voluptatem delectus tempore architecto sit. Non quia perspiciatis aliquam itaque.</p>', NULL, '2023-10-12 17:33:34', '2023-10-12 17:33:34'),
(10, 1, 2, 'Sunt repellat praesentium non hic dignissimos.', 'qui-tenetur-voluptates-dignissimos-exercitationem-est-et-nemo-suscipit', NULL, 'Quae cupiditate est et. Dolores hic quis minus sed quia maiores ex placeat. Repellat ratione aperiam labore et temporibus doloremque et.', '<p>Qui harum aut repudiandae est. Asperiores culpa natus aut pariatur enim occaecati rem et. Dicta corrupti dolore dolorem tenetur quasi non cumque. Iste ducimus similique voluptas accusamus reiciendis aut.</p><p>Fugit autem sapiente modi. Molestiae enim magnam et nihil alias sed officia sapiente. Voluptatum veritatis est sed consequatur.</p><p>Quae expedita non accusantium a et quasi nam. Saepe sed blanditiis facilis fugit. Voluptatem voluptatibus velit voluptas facilis.</p><p>Quis sit quos incidunt neque. Delectus ex sunt odio voluptas reprehenderit. Nesciunt laudantium et itaque tenetur. Perferendis ullam vero et ea inventore quisquam ut.</p><p>Quidem laborum vero nemo. Ab beatae nulla ipsa. Optio magni ipsa reprehenderit autem ratione exercitationem.</p>', NULL, '2023-10-12 17:33:34', '2023-10-12 17:33:34'),
(11, 1, 3, 'Autem explicabo sint ratione asperiores.', 'sint-illum-qui-illo-eos-et-vel-iure', NULL, 'Ut in quisquam molestiae vero sapiente quo. Nihil eius eligendi molestias voluptas ea. Ut non quam nobis. Ipsa debitis ipsa eos harum id adipisci non.', '<p>Quia dolores aut voluptate asperiores fuga. Id accusamus sit sit ratione. Qui totam ut delectus esse quasi. Ut ducimus rerum voluptas quo et accusantium hic.</p><p>Culpa qui nihil voluptatem vel dolor molestiae necessitatibus. Et voluptas omnis magni. Est velit est voluptas delectus reiciendis eligendi. Sed aperiam est qui voluptate perspiciatis quia sint.</p><p>Est officia modi voluptatibus facilis nisi et in explicabo. Omnis aliquid soluta optio dicta dolorem qui. Voluptatem aut ipsam voluptas velit ipsam id. Sed beatae ex necessitatibus quis minima ullam id.</p><p>Veritatis aut amet perferendis corrupti reiciendis ut nam aut. Voluptatem omnis eius autem quis quisquam optio ut quo. Aut voluptatibus omnis aut harum suscipit perferendis cupiditate voluptatem.</p><p>Dolore dolor rerum dolor quis placeat quia. Sunt vel deleniti quia et voluptatem. Eos qui sapiente qui quaerat qui quo reprehenderit. Ut eaque quis in non adipisci neque. Quae sit et sit dolores molestias omnis.</p><p>Atque ullam quia suscipit delectus. Dolorum occaecati dolorem error ea qui aut odio. Quia voluptates est nulla omnis iusto qui fugiat praesentium.</p><p>Fugit iure vero odio mollitia deleniti blanditiis dolor. Magni est quo beatae et. Animi aut quisquam quis qui aut soluta sint.</p>', NULL, '2023-10-12 17:33:34', '2023-10-12 17:33:34'),
(12, 1, 2, 'Unde velit reprehenderit aut incidunt et quia et aliquam sunt.', 'sequi-quia-eos-provident-iste-culpa', NULL, 'Praesentium assumenda necessitatibus quia ipsa. Quidem sint in commodi ex eligendi est. Voluptatem autem rerum doloremque quisquam possimus. Velit nam expedita veniam blanditiis exercitationem.', '<p>Non numquam quas accusantium adipisci soluta reprehenderit rem. Hic enim beatae sapiente voluptatibus reprehenderit. Architecto sint facere minima quidem.</p><p>Libero excepturi repellat culpa magni delectus. Ut omnis sint omnis facilis similique magnam voluptates. Quia error aut eveniet molestiae eveniet harum doloribus. Hic id aut labore doloremque voluptatum omnis.</p><p>Accusantium asperiores sint atque aliquid iusto ut rerum. Quis vitae asperiores enim ut eius fuga quia id. Pariatur et eum consequatur architecto consequatur est quia. Et laudantium inventore nihil nemo rerum laboriosam aperiam.</p><p>Enim quod non libero sed sint. Qui doloremque nesciunt ipsam dolor. Suscipit quod natus sint sequi id amet omnis aspernatur. Soluta rem ullam sequi porro error non saepe.</p><p>Culpa ea et minima qui est dolorem quae. Illum debitis harum voluptas debitis nisi voluptates quaerat. Soluta dolores omnis temporibus aliquid sit optio sit. Assumenda optio aut aliquam vero repudiandae perferendis.</p><p>Enim enim sint voluptatem mollitia velit quod consequatur. Perspiciatis nisi qui sint illo et beatae ut quo. Non maiores et voluptatem illo mollitia molestias.</p><p>Rerum placeat id sint. Laborum est in quod labore debitis qui. Consequatur aliquam ullam officiis omnis cupiditate. Enim ex ipsam eos.</p><p>Accusantium dolor atque commodi aut nulla voluptatem inventore. Explicabo doloremque animi occaecati labore eum amet molestiae. Magnam eos accusantium ad nulla iste iusto et harum.</p>', NULL, '2023-10-12 17:33:34', '2023-10-12 17:33:34'),
(13, 2, 3, 'Ut temporibus et sit numquam impedit porro voluptates commodi.', 'suscipit-vitae-minus-quia-architecto-et', NULL, 'Officia optio praesentium nemo sit ducimus officiis sunt. Ullam molestiae autem temporibus amet molestiae et. Laborum necessitatibus veritatis fugit voluptates. Adipisci est aliquid sit.', '<p>Praesentium sed aut dicta repudiandae. Id dolor eligendi necessitatibus iste. Quos in aliquid assumenda aliquam molestiae alias vel.</p><p>Nobis voluptatem officiis adipisci quia iusto voluptatem. Possimus odio voluptate voluptatem voluptatem error non et qui. Voluptatem dolor dolorem enim excepturi harum.</p><p>Quas saepe reprehenderit quasi ut voluptate. Est quibusdam est possimus esse omnis.</p><p>Placeat dolore eos ab eos vitae enim ut. Vel debitis nemo rem et soluta dolores. Est error est tempora vel aliquid voluptates. Voluptatibus cum quia corporis reprehenderit quo.</p><p>Earum commodi esse fugit. Nesciunt voluptas quia tempora minima perferendis.</p><p>Ullam ut qui molestias ex id sint accusamus. Vero sint officiis in molestias sint laboriosam. Omnis ut velit non earum labore omnis dolor.</p><p>Aut necessitatibus facere nobis est doloremque nisi. Placeat corporis nisi beatae laudantium. Mollitia veniam sit velit velit. Hic voluptate ab dolore omnis reiciendis dolores rerum.</p><p>Ut voluptas aut aut nisi quae cupiditate voluptatem. Sint odit accusantium voluptatem cumque et iste. Eos ut natus doloribus provident possimus. Repellat vero ad omnis et optio labore.</p><p>Accusantium aut placeat adipisci impedit. Corrupti dolores qui totam modi eaque occaecati et. Quaerat nemo fugit in doloremque saepe.</p><p>Eum sit hic ut et minima. Est nulla aliquam vitae unde necessitatibus. Aut est veniam tenetur. Et est et id alias minima.</p>', NULL, '2023-10-12 17:33:34', '2023-10-12 17:33:34'),
(14, 1, 2, 'Quo perspiciatis at minus facilis aut adipisci amet.', 'maxime-eos-iusto-quia-quas-neque-rerum', NULL, 'Ipsum qui temporibus sed eaque ratione laborum quod. Iste esse voluptas iste voluptatem adipisci ut qui. Qui neque adipisci dolores nam aliquam voluptas dolorem.', '<p>Quis incidunt omnis eligendi libero. Aut ea voluptas suscipit non porro facilis porro et. Occaecati sit magni architecto velit. Ipsam eaque impedit id incidunt. Enim itaque sint laudantium fuga sit expedita natus.</p><p>Non earum quo nulla et. Illo minus ipsam perspiciatis cumque suscipit ut. Ipsam odio voluptas blanditiis quasi eveniet cum aut saepe. Velit excepturi dignissimos voluptatum fugit.</p><p>Officiis culpa exercitationem quod eligendi veniam ut suscipit. Qui iste voluptatem non consectetur vel. Dicta voluptatem provident reiciendis consequatur. Accusantium dolor voluptatem omnis ea eius consectetur et. Facere vero autem vel fuga et et minima voluptatem.</p><p>Dolores reprehenderit dolor voluptas non. Maxime ut reiciendis qui possimus laborum qui. Consequuntur quas ut dolorem reiciendis sit.</p><p>Dolorem voluptates eos eum animi quia excepturi. Omnis et eum nisi et eum. Ut veniam ea quae atque beatae ipsam. Et distinctio mollitia qui nemo illo ut recusandae.</p><p>Quia quia fugit voluptatem quam. Ipsa ut est enim modi et. Dolorem autem nisi cumque voluptatem cupiditate.</p><p>Praesentium sed aut quibusdam optio magni. Nisi placeat impedit sed harum totam sequi at. Ut sed voluptatem est.</p>', NULL, '2023-10-12 17:33:34', '2023-10-12 17:33:34'),
(15, 2, 3, 'Explicabo optio commodi doloremque ut itaque.', 'aperiam-facere-eligendi-quod-ut-aliquid-pariatur-officiis', NULL, 'Labore tenetur nisi consequatur ad animi. Molestiae modi eaque enim saepe esse. Praesentium natus dolores qui reiciendis quasi.', '<p>Minima neque autem architecto tempore. Similique rerum iste ut et. Esse eum modi quo eaque. Aspernatur ipsam vel optio.</p><p>Ut repellendus non omnis consequatur. Voluptatem sint in fugit ut qui quidem quae. Asperiores quidem corrupti amet ea at. Magni quas sunt qui maiores veritatis nemo.</p><p>Sint a et rem quos totam sint sint. Nemo consequatur consequatur sed assumenda facilis cupiditate. Est quod quia a omnis voluptate et. Voluptatem molestias esse vero voluptas magnam molestiae.</p><p>Commodi minima architecto porro ad qui cum dignissimos. Repellat molestias quaerat voluptas ullam non at. Dolore enim quidem autem deleniti et.</p><p>Eum vel molestiae sunt et velit aperiam et sit. Sunt est nemo qui est quas. Amet sed corrupti asperiores est. Et ea voluptates placeat.</p><p>Pariatur id dolorem facere ipsum et. Est voluptatem soluta dolores consequatur.</p><p>Omnis minus et ullam voluptatem perspiciatis dolorem excepturi. Eius qui expedita quis reiciendis a corrupti cumque laborum. Id omnis vero temporibus dicta est dolores atque.</p><p>Itaque eaque ut eum voluptatem eum dignissimos. Dicta odit aut molestiae inventore.</p><p>Pariatur ut molestiae sunt itaque veritatis maiores. Fuga vel ut a id numquam nam expedita. Porro quae accusamus qui. Ea omnis ratione expedita tempore dolor rerum id. Consequatur aut dolorem consequuntur hic dolor vitae.</p><p>Libero voluptas minus inventore repudiandae consequuntur. Id autem et saepe id illo. Hic blanditiis perferendis illo unde repellat in maiores atque. Id tempora tenetur tempore dignissimos adipisci.</p>', NULL, '2023-10-12 17:33:34', '2023-10-12 17:33:34'),
(16, 2, 2, 'A et qui ea necessitatibus error.', 'iste-explicabo-rerum-reprehenderit-nobis-ut', NULL, 'Odit quae suscipit sit quibusdam aut. Est qui dolore doloremque occaecati qui provident adipisci.', '<p>Id non laborum et tempore vel distinctio et. Ut error et possimus optio odit. Sit animi soluta optio.</p><p>Alias culpa qui eum adipisci ut. Fuga debitis delectus illum est dignissimos id.</p><p>Et non distinctio explicabo consectetur voluptatibus ut. Laborum accusamus sapiente et architecto doloribus. Praesentium magnam expedita quod ut dolorem perspiciatis vero.</p><p>Deserunt autem nisi occaecati vel distinctio. Sunt corporis rerum laboriosam in. Quod alias eligendi odio est numquam nihil sed.</p><p>Sed et pariatur omnis est enim voluptatem harum. Quis sunt sit accusamus. Sunt cupiditate sit voluptate laboriosam maxime quod molestias at. Cumque quia odio magni ut perferendis tenetur similique qui.</p><p>Accusamus qui vel ea consectetur fuga eum ullam repellendus. Et eveniet rem dolor est. Qui a incidunt ut sint sed possimus magni. Qui rerum veniam nemo nulla unde et veritatis.</p>', NULL, '2023-10-12 17:33:34', '2023-10-12 17:33:34'),
(17, 2, 3, 'Aut voluptatem eaque voluptas voluptatum ad.', 'quos-quia-omnis-dolorem-dicta-voluptatibus', NULL, 'Enim quis non eligendi quo nisi omnis. Nihil aut sint soluta ratione laboriosam et. Eligendi quibusdam voluptatibus voluptas placeat at.', '<p>Autem quia ullam vel similique. Aut culpa error minus fugit. Quia amet quidem et ex quos dolorum deleniti. Nemo laborum et commodi.</p><p>Eum praesentium aut est amet sint aut qui. Molestiae et minus consequatur temporibus repellat ut exercitationem quis. Quam in voluptatum commodi velit ipsa eaque et. Similique modi soluta maiores cupiditate.</p><p>Saepe repellat esse consequatur quisquam illo voluptas nisi. Harum aut quia eius voluptatibus nisi unde praesentium. Rerum est tenetur iure velit officiis.</p><p>Aut eum voluptate et et voluptas enim hic dolorum. Qui et harum inventore autem ut explicabo quasi. Soluta eius maxime sit hic quo perferendis omnis.</p><p>Vel odio iste vitae id voluptatem qui. Dolor rerum non deserunt dolor.</p>', NULL, '2023-10-12 17:33:34', '2023-10-12 17:33:34'),
(18, 1, 3, 'Omnis optio sit sunt id dolores non error tempore sed possimus.', 'sunt-id-possimus-incidunt', NULL, 'In tenetur numquam neque dolor aut odio similique. Eius earum sapiente ut modi alias alias dolorem. Voluptatibus aut illo pariatur sed tempore temporibus commodi. Iure minima aspernatur dicta. Explicabo et saepe rem aut illum hic accusantium velit.', '<p>Optio minus aliquam iste eaque et nihil molestias. Excepturi quaerat ullam aliquid eligendi cupiditate. Soluta doloremque eos et quis dolore. Libero sit ea voluptate ab. Excepturi commodi odit itaque nulla cum magnam quam.</p><p>Modi suscipit magnam id itaque. In fuga iure alias vitae in sunt vero. Asperiores sit voluptates ipsam aut totam harum autem. Repellendus ut esse ullam aut.</p><p>Molestiae quasi ea et voluptas inventore corrupti deserunt. Id mollitia eligendi sint ut velit modi et. Perspiciatis laborum doloribus ut quos molestiae.</p><p>Voluptatibus dolor odit et omnis perspiciatis accusamus deserunt porro. Illo repudiandae non quis perspiciatis repudiandae a nostrum. Minima architecto in reiciendis labore et non.</p><p>Commodi qui dolorem repellat libero quidem. Dolores ut corporis iste nemo est aut. Eos debitis illo consequuntur alias et recusandae non. Dolorem molestiae illum rerum vel laboriosam tenetur.</p><p>Excepturi reprehenderit aut eaque sed in error sunt non. Distinctio totam incidunt commodi praesentium eligendi et dolore fuga. Eaque alias tempora et totam amet. Sit id qui provident in. Aut provident nulla ad modi et est voluptatem sunt.</p><p>Quia sapiente in iusto vitae voluptatem doloribus. Vel et occaecati molestiae non qui voluptate rerum. Consequatur vero et voluptas. Blanditiis adipisci qui ad alias.</p><p>Est molestiae ut sint aperiam. Ea id consequatur ex repellendus. Est tempore et ipsum ex totam non.</p>', NULL, '2023-10-12 17:33:34', '2023-10-12 17:33:34'),
(19, 2, 2, 'Sit autem doloribus aliquam fuga dolorem excepturi dolores praesentium nobis.', 'eveniet-quia-ut-magni-nihil-provident-in-ducimus-tenetur', NULL, 'Enim quisquam doloremque enim consequatur magni porro. Numquam iste at provident dignissimos. Mollitia non autem nemo ut expedita dolorem. Fuga dolor quam alias et impedit ea.', '<p>Autem qui cupiditate aliquid aut quia. Amet quas amet dolores tempore corporis unde quas. Esse ut totam officiis. Unde nemo cupiditate quia et beatae et facere.</p><p>Occaecati illum aut ab et consequatur. Quia assumenda dolorum atque vel repudiandae voluptatem. Itaque doloremque id magni aliquid.</p><p>Velit qui aliquid rerum ducimus est voluptatum nulla debitis. Odio est impedit porro corrupti quibusdam minima numquam quibusdam. Repellendus cum delectus temporibus omnis voluptas eaque fuga a. Itaque sit aperiam explicabo harum. Autem voluptate dolorem deserunt praesentium animi ipsum neque sit.</p><p>Voluptatum dolores non occaecati mollitia recusandae aut recusandae. Laboriosam at in temporibus doloremque voluptas eligendi provident.</p><p>Consequatur unde doloremque accusantium qui fugit. Quia aliquid cumque totam reiciendis. Molestias ullam cum sit molestiae.</p>', NULL, '2023-10-12 17:33:34', '2023-10-12 17:33:34'),
(20, 1, 2, 'Laboriosam aut.', 'voluptatem-magni-molestiae-ut-consequatur', NULL, 'Quidem qui vitae similique inventore est a. Sit ipsam illo modi distinctio voluptates. Autem facilis quos et et quisquam. Quia in velit non voluptates.', '<p>Magni enim cupiditate voluptatem non at consequatur maiores. Qui voluptatum quia provident qui.</p><p>Consectetur dolorum dolorem quo accusantium. Dolor nihil odio voluptatum hic nihil molestias doloribus. Praesentium et eum accusantium dolor recusandae. Beatae laboriosam vel ut autem.</p><p>Iste natus similique ipsum est. Consequatur quia voluptatibus fugiat perferendis sunt eum velit. Aliquam ea reprehenderit qui assumenda et aut vero suscipit.</p><p>Necessitatibus quo ut temporibus nesciunt enim sint et. Ab cupiditate qui inventore sit. Quasi ducimus quas quisquam nam est. Delectus totam nesciunt quia molestiae nesciunt ipsa rerum ut. Eius repudiandae voluptatibus maxime aut aut.</p><p>Soluta architecto reiciendis dignissimos. Fugit error nihil quae aliquid est. Accusantium in aut at vel ea.</p>', NULL, '2023-10-12 17:33:34', '2023-10-12 17:33:34'),
(21, 1, 1, 'coba image', 'coba-image', 'post-images/RD653Fal04pcr6tsApccL4nxv8IPq3dQcADsPXqo.jpg', 'asdasfsfgdfgdfg', '<div>asdasfsfgdfgdfg</div>', NULL, '2023-10-12 17:43:36', '2023-10-12 17:43:36'),
(23, 1, 1, 'coba preview img', 'coba-preview-img', 'post-images/T5l7SwjCqhnJ8Oj4D8VErf72GPIQXzKjFDZ6HOKh.jpg', 'Ini preview ImagesiofsdiofsdifjsadsgdfsokfsdofsddaOfsdakDsakjdasfsaf/pskdfsedposaodopopopooop', '<div><strong>Ini preview Image<br><br></strong>siofsdiofsdifjsadsgdfsokfsdofsddaOfsdakDsakjdasfsaf/pskdfsedposaodopopopooop</div>', NULL, '2023-10-13 02:06:17', '2023-10-13 02:15:08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'Arkan Karim', 'Kann', 'arkan@gmail.com', NULL, '$2y$10$6VuTxDYRKK.LeCdPejyz7OAYVVBjS.Da5.cGYUdghabDd3mCooHQi', NULL, '2023-10-12 17:33:33', '2023-10-12 17:33:33', 1),
(2, 'Ghaliyati Andriani', 'twaluyo', 'bmustofa@example.net', '2023-10-12 17:33:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'XfBHO7gHgT', '2023-10-12 17:33:34', '2023-10-12 17:33:34', 0),
(3, 'Pia Wulan Anggraini', 'susanti.febi', 'daliman.purnawati@example.org', '2023-10-12 17:33:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LbmMfOtIublkOX19LF43ts31qxWmY2WanLfwYFZLmKvm8eAzpYdTxeqCBzbR', '2023-10-12 17:33:34', '2023-10-12 17:33:34', 1),
(4, 'Ami Hastuti', 'wastuti.tira', 'nashiruddin.sari@example.com', '2023-10-12 17:33:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RQ9dSkikyV', '2023-10-12 17:33:34', '2023-10-12 17:33:34', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_nama_unique` (`nama`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
