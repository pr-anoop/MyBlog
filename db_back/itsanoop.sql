-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 14, 2014 at 07:44 PM
-- Server version: 5.5.37-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `itsanoop`
--

-- --------------------------------------------------------

--
-- Table structure for table `apr_commentmeta`
--

CREATE TABLE IF NOT EXISTS `apr_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `apr_comments`
--

CREATE TABLE IF NOT EXISTS `apr_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `apr_comments`
--

INSERT INTO `apr_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'https://wordpress.org/', '', '2014-08-08 05:41:57', '2014-08-08 05:41:57', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `apr_links`
--

CREATE TABLE IF NOT EXISTS `apr_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `apr_options`
--

CREATE TABLE IF NOT EXISTS `apr_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=259 ;

--
-- Dumping data for table `apr_options`
--

INSERT INTO `apr_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/itsanoop.in', 'yes'),
(2, 'blogname', 'Its Anoop', 'yes'),
(3, 'blogdescription', 'Good to the last code...!', 'yes'),
(4, 'users_can_register', '0', 'yes'),
(5, 'admin_email', 'itsanoop@outlook.com', 'yes'),
(6, 'start_of_week', '1', 'yes'),
(7, 'use_balanceTags', '0', 'yes'),
(8, 'use_smilies', '1', 'yes'),
(9, 'require_name_email', '1', 'yes'),
(10, 'comments_notify', '1', 'yes'),
(11, 'posts_per_rss', '10', 'yes'),
(12, 'rss_use_excerpt', '0', 'yes'),
(13, 'mailserver_url', 'mail.example.com', 'yes'),
(14, 'mailserver_login', 'login@example.com', 'yes'),
(15, 'mailserver_pass', 'password', 'yes'),
(16, 'mailserver_port', '110', 'yes'),
(17, 'default_category', '1', 'yes'),
(18, 'default_comment_status', 'open', 'yes'),
(19, 'default_ping_status', 'open', 'yes'),
(20, 'default_pingback_flag', '0', 'yes'),
(21, 'posts_per_page', '10', 'yes'),
(22, 'date_format', 'F j, Y', 'yes'),
(23, 'time_format', 'g:i a', 'yes'),
(24, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(25, 'comment_moderation', '0', 'yes'),
(26, 'moderation_notify', '1', 'yes'),
(27, 'permalink_structure', '/%year%/%monthnum%/%postname%/', 'yes'),
(28, 'gzipcompression', '0', 'yes'),
(29, 'hack_file', '0', 'yes'),
(30, 'blog_charset', 'UTF-8', 'yes'),
(31, 'moderation_keys', '', 'no'),
(32, 'active_plugins', 'a:1:{i:0;s:39:"wp-code-highlight/wp-code-highlight.php";}', 'yes'),
(33, 'home', 'http://localhost/itsanoop.in', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'advanced_edit', '0', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '0', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', 'a:2:{i:0;s:67:"/home/anoop/webroot/itsanoop.in/wp-content/themes/focused/style.css";i:2;s:0:"";}', 'no'),
(41, 'template', 'focused', 'yes'),
(42, 'stylesheet', 'focused', 'yes'),
(43, 'comment_whitelist', '1', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '0', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '27916', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '0', 'yes'),
(53, 'default_link_category', '2', 'yes'),
(54, 'show_on_front', 'posts', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '1', 'yes'),
(57, 'avatar_rating', 'G', 'yes'),
(58, 'upload_url_path', '', 'yes'),
(59, 'thumbnail_size_w', '150', 'yes'),
(60, 'thumbnail_size_h', '150', 'yes'),
(61, 'thumbnail_crop', '1', 'yes'),
(62, 'medium_size_w', '300', 'yes'),
(63, 'medium_size_h', '300', 'yes'),
(64, 'avatar_default', 'mystery', 'yes'),
(65, 'large_size_w', '1024', 'yes'),
(66, 'large_size_h', '1024', 'yes'),
(67, 'image_default_link_type', 'file', 'yes'),
(68, 'image_default_size', '', 'yes'),
(69, 'image_default_align', '', 'yes'),
(70, 'close_comments_for_old_posts', '0', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '1', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '0', 'yes'),
(75, 'comments_per_page', '50', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'asc', 'yes'),
(78, 'sticky_posts', 'a:0:{}', 'yes'),
(79, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(82, 'uninstall_plugins', 'a:0:{}', 'no'),
(83, 'timezone_string', '', 'yes'),
(84, 'page_for_posts', '0', 'yes'),
(85, 'page_on_front', '0', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'initial_db_version', '27916', 'yes'),
(89, 'apr_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(90, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(91, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-comments', 'a:2:{s:12:"_multiwidget";i:1;i:1;a:0:{}}', 'yes'),
(93, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_meta', 'a:2:{s:12:"_multiwidget";i:1;i:1;a:0:{}}', 'yes'),
(95, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:7:"sidebar";a:5:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:10:"archives-2";i:3;s:12:"categories-2";i:4;s:11:"tag_cloud-2";}s:13:"array_version";i:3;}', 'yes'),
(96, 'cron', 'a:5:{i:1408038132;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1408044540;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1408081362;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1408104307;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(98, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:2:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-3.9.2.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-3.9.2.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-3.9.2-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-3.9.2-new-bundled.zip";s:7:"partial";s:69:"https://downloads.wordpress.org/release/wordpress-3.9.2-partial-1.zip";s:8:"rollback";b:0;}s:7:"current";s:5:"3.9.2";s:7:"version";s:5:"3.9.2";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"3.8";s:15:"partial_version";s:5:"3.9.1";}i:1;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-3.9.2.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-3.9.2.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-3.9.2-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-3.9.2-new-bundled.zip";s:7:"partial";s:69:"https://downloads.wordpress.org/release/wordpress-3.9.2-partial-1.zip";s:8:"rollback";s:70:"https://downloads.wordpress.org/release/wordpress-3.9.2-rollback-1.zip";}s:7:"current";s:5:"3.9.2";s:7:"version";s:5:"3.9.2";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"3.8";s:15:"partial_version";s:5:"3.9.1";s:13:"support_email";s:27:"updatehelp392@wordpress.org";}}s:12:"last_checked";i:1408002527;s:15:"version_checked";s:5:"3.9.1";s:12:"translations";a:0:{}}', 'yes'),
(103, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1408024254;s:7:"checked";a:4:{s:7:"focused";s:5:"1.0.1";s:14:"twentyfourteen";s:3:"1.1";s:14:"twentythirteen";s:3:"1.2";s:12:"twentytwelve";s:3:"1.4";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'yes'),
(104, '_site_transient_timeout_browser_9144b8475a7ea4baab9c7fb910a15a58', '1408081346', 'yes'),
(105, '_site_transient_browser_9144b8475a7ea4baab9c7fb910a15a58', 'a:9:{s:8:"platform";s:5:"Linux";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"35.0.1916.153";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(106, 'can_compress_scripts', '0', 'yes'),
(125, '_transient_twentyfourteen_category_count', '1', 'yes'),
(126, 'theme_mods_twentyfourteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1407477124;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(127, 'current_theme', 'Focused', 'yes'),
(128, 'theme_mods_focused', 'a:7:{i:0;b:0;s:16:"background_color";s:6:"FFFFFF";s:16:"background_image";s:72:"http://localhost/itsanoop.in/wp-content/themes/focused/img/tiny_grid.png";s:17:"background_repeat";s:6:"repeat";s:21:"background_position_x";s:4:"left";s:21:"background_attachment";s:5:"fixed";s:18:"nav_menu_locations";a:1:{s:8:"main_nav";i:0;}}', 'yes'),
(129, 'theme_switched', '', 'yes'),
(130, 'optionsframework', 'a:2:{s:2:"id";s:7:"focused";s:12:"knownoptions";a:1:{i:0;s:7:"focused";}}', 'yes'),
(131, 'focused', 'a:39:{s:9:"fcsd_logo";s:0:"";s:15:"fcsd_image_logo";s:1:"0";s:25:"fcsd_image_logo_roundness";s:1:"0";s:14:"fcsd_logo_text";s:16:"Anoop Raveendran";s:12:"fcsd_favicon";s:0:"";s:11:"fcsd_layout";s:4:"left";s:21:"fcsd_customtypography";s:1:"1";s:17:"fcsd_logofontlink";s:107:"&lt;link href=''http://fonts.googleapis.com/css?family=Raleway:900,800'' rel=''stylesheet'' type=''text/css''&gt;";s:17:"fcsd_logofontface";s:35:"font-family: ''Raleway'', sans-serif;";s:20:"fcsd_headingfontlink";s:113:"&lt;link href=''http://fonts.googleapis.com/css?family=Open+Sans:300,700,400'' rel=''stylesheet'' type=''text/css''&gt;";s:20:"fcsd_headingfontface";s:37:"font-family: ''Open Sans'', sans-serif;";s:17:"fcsd_bodyfontlink";s:113:"&lt;link href=''http://fonts.googleapis.com/css?family=Open+Sans:300,700,400'' rel=''stylesheet'' type=''text/css''&gt;";s:17:"fcsd_bodyfontface";s:37:"font-family: ''Open Sans'', sans-serif;";s:20:"fcsd_logo_text_color";s:0:"";s:15:"fcsd_body_color";s:0:"";s:20:"fcsd_body_link_color";s:0:"";s:26:"fcsd_body_link_color_hover";s:0:"";s:17:"fcsd_main_h_color";s:0:"";s:20:"fcsd_sidebar_h_color";s:0:"";s:26:"fcsd_post_title_link_color";s:0:"";s:32:"fcsd_post_title_link_color_hover";s:0:"";s:22:"fcsd_post_format_color";s:0:"";s:19:"fcsd_nav_link_color";s:0:"";s:25:"fcsd_nav_link_color_hover";s:0:"";s:18:"fcsd_contact_email";s:20:"itsanoop@outlook.com";s:12:"fcsd_twitter";s:8:"pr_anoop";s:13:"fcsd_facebook";s:0:"";s:13:"fcsd_dribbble";s:0:"";s:10:"fcsd_vimeo";s:0:"";s:13:"fcsd_linkedin";s:0:"";s:15:"fcsd_googleplus";s:55:"https://plus.google.com/u/0/111961399267886187572/posts";s:11:"fcsd_github";s:27:"https://github.com/anoop-pr";s:8:"fcsd_rss";s:1:"1";s:11:"fcsd_extrss";s:0:"";s:9:"fcsd_meta";s:1:"1";s:20:"fcsd_metadescription";s:41:"My personal technical and photograpy blog";s:17:"fcsd_metakeywords";s:23:"Technology, Photography";s:21:"fcsd_footer_copyright";s:41:"© 2014 itsanoop.in. All rights reserved.";s:10:"fcsd_stats";s:0:"";}', 'yes'),
(132, 'widget_pages', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(133, 'widget_calendar', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(134, 'widget_tag_cloud', 'a:3:{i:1;a:0:{}i:2;a:2:{s:5:"title";s:15:"Recent Searches";s:8:"taxonomy";s:8:"post_tag";}s:12:"_multiwidget";i:1;}', 'yes'),
(135, 'widget_nav_menu', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(180, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1408019659;s:7:"checked";a:3:{s:19:"akismet/akismet.php";s:5:"3.0.0";s:9:"hello.php";s:3:"1.6";s:39:"wp-code-highlight/wp-code-highlight.php";s:5:"1.2.9";}s:8:"response";a:1:{s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"3.0.1";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.3.0.1.zip";}}s:12:"translations";a:0:{}}', 'yes'),
(181, '_transient_timeout_plugin_slugs', '1408106061', 'no'),
(182, '_transient_plugin_slugs', 'a:3:{i:0;s:19:"akismet/akismet.php";i:1;s:9:"hello.php";i:2;s:39:"wp-code-highlight/wp-code-highlight.php";}', 'no'),
(183, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1408052231', 'no'),
(184, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: A valid URL was not provided.</p></div><div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: A valid URL was not provided.</p></div><div class="rss-widget"><ul></ul></div>', 'no'),
(188, 'category_children', 'a:0:{}', 'yes'),
(189, '_site_transient_timeout_browser_8c56099df842610726dbd98a79e054a6', '1408622652', 'yes'),
(190, '_site_transient_browser_8c56099df842610726dbd98a79e054a6', 'a:9:{s:8:"platform";s:5:"Linux";s:4:"name";s:7:"Firefox";s:7:"version";s:4:"30.0";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:2:"16";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(193, 'recently_activated', 'a:0:{}', 'yes'),
(194, 'wp_code_highlight_button', 'enable', 'yes'),
(195, 'wp_code_highlight_themes', 'desert', 'yes'),
(196, 'wp_code_highlight_line_numbers', 'enable', 'yes'),
(197, 'wp_code_highlight_deactivate', '', 'yes'),
(218, 'rewrite_rules', 'a:69:{s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:47:"[0-9]{4}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:44:"([0-9]{4})/([0-9]{1,2})/([^/]+)/trackback/?$";s:69:"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&tb=1";s:64:"([0-9]{4})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&feed=$matches[4]";s:59:"([0-9]{4})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&feed=$matches[4]";s:52:"([0-9]{4})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:82:"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&paged=$matches[4]";s:59:"([0-9]{4})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:82:"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&cpage=$matches[4]";s:44:"([0-9]{4})/([0-9]{1,2})/([^/]+)(/[0-9]+)?/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&page=$matches[4]";s:36:"[0-9]{4}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"[0-9]{4}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"[0-9]{4}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"[0-9]{4}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"[0-9]{4}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)(/[0-9]+)?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(223, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(224, '_site_transient_timeout_theme_roots', '1408024460', 'yes'),
(225, '_site_transient_theme_roots', 'a:4:{s:7:"focused";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:14:"twentythirteen";s:7:"/themes";s:12:"twentytwelve";s:7:"/themes";}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `apr_postmeta`
--

CREATE TABLE IF NOT EXISTS `apr_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=95 ;

--
-- Dumping data for table `apr_postmeta`
--

INSERT INTO `apr_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_menu_item_type', 'custom'),
(3, 4, '_menu_item_menu_item_parent', '0'),
(4, 4, '_menu_item_object_id', '4'),
(5, 4, '_menu_item_object', 'custom'),
(6, 4, '_menu_item_target', ''),
(7, 4, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(8, 4, '_menu_item_xfn', ''),
(9, 4, '_menu_item_url', 'http://localhost/itsanoop.in/'),
(10, 4, '_menu_item_orphaned', '1407477402'),
(11, 5, '_menu_item_type', 'post_type'),
(12, 5, '_menu_item_menu_item_parent', '0'),
(13, 5, '_menu_item_object_id', '2'),
(14, 5, '_menu_item_object', 'page'),
(15, 5, '_menu_item_target', ''),
(16, 5, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(17, 5, '_menu_item_xfn', ''),
(18, 5, '_menu_item_url', ''),
(19, 5, '_menu_item_orphaned', '1407477402'),
(22, 1, '_edit_lock', '1408017759:1'),
(23, 1, '_wp_trash_meta_status', 'publish'),
(24, 1, '_wp_trash_meta_time', '1408017808'),
(25, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(26, 10, '_edit_last', '1'),
(27, 10, '_edit_lock', '1408023548:1'),
(28, 13, '_wp_attached_file', '2014/08/aws_logo.jpg'),
(29, 13, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:373;s:4:"file";s:20:"2014/08/aws_logo.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"aws_logo-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"aws_logo-300x109.jpg";s:5:"width";i:300;s:6:"height";i:109;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:20:"aws_logo-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:21:"single-post-thumbnail";a:4:{s:4:"file";s:20:"aws_logo-336x336.jpg";s:5:"width";i:336;s:6:"height";i:336;s:9:"mime-type";s:10:"image/jpeg";}s:20:"portfolio-item-small";a:4:{s:4:"file";s:20:"aws_logo-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(30, 10, '_thumbnail_id', '13'),
(38, 26, '_menu_item_type', 'custom'),
(39, 26, '_menu_item_menu_item_parent', '0'),
(40, 26, '_menu_item_object_id', '26'),
(41, 26, '_menu_item_object', 'custom'),
(42, 26, '_menu_item_target', ''),
(43, 26, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(44, 26, '_menu_item_xfn', ''),
(45, 26, '_menu_item_url', 'http://localhost/itsanoop.in/'),
(46, 26, '_menu_item_orphaned', '1408022486'),
(47, 27, '_menu_item_type', 'post_type'),
(48, 27, '_menu_item_menu_item_parent', '0'),
(49, 27, '_menu_item_object_id', '2'),
(50, 27, '_menu_item_object', 'page'),
(51, 27, '_menu_item_target', ''),
(52, 27, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(53, 27, '_menu_item_xfn', ''),
(54, 27, '_menu_item_url', ''),
(55, 27, '_menu_item_orphaned', '1408022488'),
(74, 30, '_menu_item_type', 'custom'),
(75, 30, '_menu_item_menu_item_parent', '0'),
(76, 30, '_menu_item_object_id', '30'),
(77, 30, '_menu_item_object', 'custom'),
(78, 30, '_menu_item_target', ''),
(79, 30, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(80, 30, '_menu_item_xfn', ''),
(81, 30, '_menu_item_url', 'http://localhost/itsanoop.in/'),
(82, 30, '_menu_item_orphaned', '1408022739'),
(83, 31, '_menu_item_type', 'post_type'),
(84, 31, '_menu_item_menu_item_parent', '0'),
(85, 31, '_menu_item_object_id', '2'),
(86, 31, '_menu_item_object', 'page'),
(87, 31, '_menu_item_target', ''),
(88, 31, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(89, 31, '_menu_item_xfn', ''),
(90, 31, '_menu_item_url', ''),
(91, 31, '_menu_item_orphaned', '1408022741'),
(93, 33, '_wp_attached_file', '2014/08/anoop.jpg'),
(94, 33, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2000;s:6:"height";i:1955;s:4:"file";s:17:"2014/08/anoop.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"anoop-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"anoop-300x293.jpg";s:5:"width";i:300;s:6:"height";i:293;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"anoop-1024x1000.jpg";s:5:"width";i:1024;s:6:"height";i:1000;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:17:"anoop-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:21:"single-post-thumbnail";a:4:{s:4:"file";s:17:"anoop-336x336.jpg";s:5:"width";i:336;s:6:"height";i:336;s:9:"mime-type";s:10:"image/jpeg";}s:20:"portfolio-item-small";a:4:{s:4:"file";s:17:"anoop-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}');

-- --------------------------------------------------------

--
-- Table structure for table `apr_posts`
--

CREATE TABLE IF NOT EXISTS `apr_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `apr_posts`
--

INSERT INTO `apr_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2014-08-08 05:41:57', '2014-08-08 05:41:57', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world', '', '', '2014-08-14 12:03:28', '2014-08-14 12:03:28', '', 0, 'http://localhost/itsanoop.in/?p=1', 0, 'post', '', 1),
(2, 1, '2014-08-08 05:41:57', '2014-08-08 05:41:57', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/itsanoop.in/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'open', 'open', '', 'sample-page', '', '', '2014-08-08 05:41:57', '2014-08-08 05:41:57', '', 0, 'http://localhost/itsanoop.in/?page_id=2', 0, 'page', '', 0),
(3, 1, '2014-08-08 05:42:27', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-08-08 05:42:27', '0000-00-00 00:00:00', '', 0, 'http://localhost/itsanoop.in/?p=3', 0, 'post', '', 0),
(4, 1, '2014-08-08 05:56:41', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'open', 'open', '', '', '', '', '2014-08-08 05:56:41', '0000-00-00 00:00:00', '', 0, 'http://localhost/itsanoop.in/?p=4', 1, 'nav_menu_item', '', 0),
(5, 1, '2014-08-08 05:56:42', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-08-08 05:56:42', '0000-00-00 00:00:00', '', 0, 'http://localhost/itsanoop.in/?p=5', 1, 'nav_menu_item', '', 0),
(6, 1, '2014-08-08 05:57:25', '0000-00-00 00:00:00', '', 'Fcsd Logo', '', 'draft', 'closed', 'closed', '', 'of-fcsd_logo', '', '', '2014-08-08 05:57:25', '0000-00-00 00:00:00', '', 0, 'http://localhost/itsanoop.in/?post_type=optionsframework&p=6', 0, 'optionsframework', '', 0),
(7, 1, '2014-08-08 05:57:25', '0000-00-00 00:00:00', '', 'Fcsd Favicon', '', 'draft', 'closed', 'closed', '', 'of-fcsd_favicon', '', '', '2014-08-08 05:57:25', '0000-00-00 00:00:00', '', 0, 'http://localhost/itsanoop.in/?post_type=optionsframework&p=7', 0, 'optionsframework', '', 0),
(9, 1, '2014-08-14 12:03:28', '2014-08-14 12:03:28', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'inherit', 'open', 'open', '', '1-revision-v1', '', '', '2014-08-14 12:03:28', '2014-08-14 12:03:28', '', 1, 'http://localhost/itsanoop.in/?p=9', 0, 'revision', '', 0),
(10, 1, '2014-08-14 12:33:37', '2014-08-14 12:33:37', 'In this article I am trying to explain how to set up an elastic server on EC2 instance. Before going to start we need to have an EC2 instance and I have an instance with Ubuntu 14.10 LTE installed.\r\n\r\nNormally we setup elastic search server in a separate EC2 instance for isolating the code base from the elastic search server. Elastic server is build on top of apache solir, to know more about elastic search server click here. Elastic search server has a rich set of restful API’s for communicate with the server; you could find the documentation here.\r\n\r\nAs a first step we need to enable some ports to communicate with the elastic search server.  From the amazon console we need to create a new security group which opens port 9300 (for elastic search transport), 22 (SSH) and port 9200 (for HTTP communication). You can change the security group rules at any time.\r\n\r\nBefore installing elastic search server we need to install openjdk 7 and unzip. For installing the dependencies run the following commands in the terminal.\r\n<pre>sudo apt-get install openjdk-7-jdk\r\nsudo apt-get install zip\r\nsudo apt-get update\r\n</pre>\r\nElastic search server installation\r\n<pre>wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.0.1.zip\r\nsudo unzip elasticsearch-1.0.1.zip \r\ncd elasticsearch-1.0.1\r\nsudo bin/plugin -install elasticsearch/elasticsearch-cloud-aws/2.0.0.RC1\r\n</pre>\r\n<strong>Server configuration for EC2</strong>\r\n\r\nLike all settings for elastic search, there are multiple ways to configure the nodes. Since we are running the standard download of elastic search, we will be editing the elasticsearch.yml file in the config directory. By default, every setting is commented out. We will give our cluster unique name, and add a few settings to enable EC2 discovery.\r\n<pre>cd config/\r\nnano elasticsearch.yml\r\n</pre>\r\nThen add the following code in the configuration file.\r\n<pre>cluster.name: \r\ncloud.aws.access_key: \r\ncloud.aws.secret_key: \r\ndiscovery.type: ec2\r\n</pre>\r\nYour access key and secret key are found in the account section of the AWS console.\r\nOnce configured, we can start the elastic search server from the root installation directory using the command.\r\n<pre>sudo ./bin/elasticsearch  -f\r\n</pre>\r\n\r\nThanks for reading! If have any doubts please put a comment and let''s discuss.', 'Install elastic search on amazon EC2 instance', '', 'publish', 'open', 'open', '', 'install-elastic-search-on-amazon-ec2-instance', '', '', '2014-08-14 13:39:06', '2014-08-14 13:39:06', '', 0, 'http://localhost/itsanoop.in/?p=10', 0, 'post', '', 0),
(11, 1, '2014-08-14 12:05:42', '2014-08-14 12:05:42', 'In this article I am trying to explain how to set up an elastic server on EC2 instance. Before going to start we need to have an EC2 instance and I have an instance with Ubuntu 14.10 LTE installed.\r\nNormally we setup elastic search server in a separate EC2 instance for isolating the code base from the elastic search server. Elastic server is build on top of apache solir, to know more about elastic search server click here. Elastic search server has a rich set of restful API’s for communicate with the server; you could find the documentation here.\r\nAs a first step we need to enable some ports to communicate with the elastic search server.  From the amazon console we need to create a new security group which opens port 9300 (for elastic search transport), 22 (SSH) and port 9200 (for HTTP communication). You can change the security group rules at any time.\r\nBefore installing elastic search server we need to install openjdk 7 and unzip. For installing the dependencies run the following commands in the terminal.\r\n$ sudo apt-get install openjdk-7-jdk\r\n$ sudo apt-get install zip\r\n$ sudo apt-get update\r\nElastic search server installation\r\n$ wget\r\n$ cd\r\n$ sudo\r\nServer configuration for EC2\r\n\r\nLike all settings for elastic search, there are multiple ways to configure the nodes. Since we are running the standard download of elastic search, we will be editing the elasticsearch.yml file in the config directory. By default, every setting is commented out. We will give our cluster unique name, and add a few settings to enable EC2 discovery.\r\n$ cd config/\r\n$ nano elasticsearch.yml\r\nThen add the following code in the configuration file.\r\n--\r\nYour access key and secret key are found in the account section of the AWS console.\r\nOnce configured, we can start the elastic search server from the root installation directory using the command.\r\n$ sudo ./bin/elasticsearch  -f', 'Install elastic search on amazon EC2 instance', '', 'inherit', 'open', 'open', '', '10-revision-v1', '', '', '2014-08-14 12:05:42', '2014-08-14 12:05:42', '', 10, 'http://localhost/itsanoop.in/?p=11', 0, 'revision', '', 0),
(12, 1, '2014-08-14 12:15:42', '2014-08-14 12:15:42', 'In this article I am trying to explain how to set up an elastic server on EC2 instance. Before going to start we need to have an EC2 instance and I have an instance with Ubuntu 14.10 LTE installed.\r\n\r\nNormally we setup elastic search server in a separate EC2 instance for isolating the code base from the elastic search server. Elastic server is build on top of apache solir, to know more about elastic search server click here. Elastic search server has a rich set of restful API’s for communicate with the server; you could find the documentation here.\r\n\r\nAs a first step we need to enable some ports to communicate with the elastic search server.  From the amazon console we need to create a new security group which opens port 9300 (for elastic search transport), 22 (SSH) and port 9200 (for HTTP communication). You can change the security group rules at any time.\r\n\r\n\r\n\r\n<blockquote>Before installing elastic search server we need to install openjdk 7 and unzip. For installing the dependencies run the following commands in the terminal.</blockquote>\r\n\r\n\r\n\r\n$ sudo apt-get install openjdk-7-jdk\r\n$ sudo apt-get install zip\r\n$ sudo apt-get update\r\n\r\nElastic search server installation\r\n$ wget\r\n$ cd\r\n$ sudo\r\n\r\nServer configuration for EC2\r\n\r\nLike all settings for elastic search, there are multiple ways to configure the nodes. Since we are running the standard download of elastic search, we will be editing the elasticsearch.yml file in the config directory. By default, every setting is commented out. We will give our cluster unique name, and add a few settings to enable EC2 discovery.\r\n$ cd config/\r\n$ nano elasticsearch.yml\r\nThen add the following code in the configuration file.\r\n--\r\nYour access key and secret key are found in the account section of the AWS console.\r\nOnce configured, we can start the elastic search server from the root installation directory using the command.\r\n$ sudo ./bin/elasticsearch  -f', 'Install elastic search on amazon EC2 instance', '', 'inherit', 'open', 'open', '', '10-revision-v1', '', '', '2014-08-14 12:15:42', '2014-08-14 12:15:42', '', 10, 'http://localhost/itsanoop.in/?p=12', 0, 'revision', '', 0),
(13, 1, '2014-08-14 12:16:11', '2014-08-14 12:16:11', '', 'aws_logo', '', 'inherit', 'open', 'open', '', 'aws_logo', '', '', '2014-08-14 12:16:11', '2014-08-14 12:16:11', '', 10, 'http://localhost/itsanoop.in/wp-content/uploads/2014/08/aws_logo.jpg', 0, 'attachment', 'image/jpeg', 0),
(14, 1, '2014-08-14 12:16:23', '2014-08-14 12:16:23', 'In this article I am trying to explain how to set up an elastic server on EC2 instance. Before going to start we need to have an EC2 instance and I have an instance with Ubuntu 14.10 LTE installed.\r\n\r\nNormally we setup elastic search server in a separate EC2 instance for isolating the code base from the elastic search server. Elastic server is build on top of apache solir, to know more about elastic search server click here. Elastic search server has a rich set of restful API’s for communicate with the server; you could find the documentation here.\r\n\r\nAs a first step we need to enable some ports to communicate with the elastic search server.  From the amazon console we need to create a new security group which opens port 9300 (for elastic search transport), 22 (SSH) and port 9200 (for HTTP communication). You can change the security group rules at any time.\r\n\r\nBefore installing elastic search server we need to install openjdk 7 and unzip. For installing the dependencies run the following commands in the terminal.\r\n\r\n$ sudo apt-get install openjdk-7-jdk\r\n$ sudo apt-get install zip\r\n$ sudo apt-get update\r\n\r\nElastic search server installation\r\n$ wget\r\n$ cd\r\n$ sudo\r\n\r\nServer configuration for EC2\r\n\r\nLike all settings for elastic search, there are multiple ways to configure the nodes. Since we are running the standard download of elastic search, we will be editing the elasticsearch.yml file in the config directory. By default, every setting is commented out. We will give our cluster unique name, and add a few settings to enable EC2 discovery.\r\n$ cd config/\r\n$ nano elasticsearch.yml\r\nThen add the following code in the configuration file.\r\n--\r\nYour access key and secret key are found in the account section of the AWS console.\r\nOnce configured, we can start the elastic search server from the root installation directory using the command.\r\n$ sudo ./bin/elasticsearch  -f', 'Install elastic search on amazon EC2 instance', '', 'inherit', 'open', 'open', '', '10-revision-v1', '', '', '2014-08-14 12:16:23', '2014-08-14 12:16:23', '', 10, 'http://localhost/itsanoop.in/?p=14', 0, 'revision', '', 0),
(15, 1, '2014-08-14 12:17:40', '2014-08-14 12:17:40', 'In this article I am trying to explain how to set up an elastic server on EC2 instance. Before going to start we need to have an EC2 instance and I have an instance with Ubuntu 14.10 LTE installed.\r\n\r\nNormally we setup elastic search server in a separate EC2 instance for isolating the code base from the elastic search server. Elastic server is build on top of apache solir, to know more about elastic search server click here. Elastic search server has a rich set of restful API’s for communicate with the server; you could find the documentation here.\r\n\r\nAs a first step we need to enable some ports to communicate with the elastic search server.  From the amazon console we need to create a new security group which opens port 9300 (for elastic search transport), 22 (SSH) and port 9200 (for HTTP communication). You can change the security group rules at any time.\r\n\r\nBefore installing elastic search server we need to install openjdk 7 and unzip. For installing the dependencies run the following commands in the terminal.\r\n<blockquote>$ sudo apt-get install openjdk-7-jdk\r\n$ sudo apt-get install zip\r\n$ sudo apt-get update\r\n\r\nElastic search server installation\r\n$ wget\r\n$ cd\r\n$ sudo</blockquote>\r\nServer configuration for EC2\r\n\r\nLike all settings for elastic search, there are multiple ways to configure the nodes. Since we are running the standard download of elastic search, we will be editing the elasticsearch.yml file in the config directory. By default, every setting is commented out. We will give our cluster unique name, and add a few settings to enable EC2 discovery.\r\n$ cd config/\r\n$ nano elasticsearch.yml\r\nThen add the following code in the configuration file.\r\n--\r\nYour access key and secret key are found in the account section of the AWS console.\r\nOnce configured, we can start the elastic search server from the root installation directory using the command.\r\n$ sudo ./bin/elasticsearch  -f', 'Install elastic search on amazon EC2 instance', '', 'inherit', 'open', 'open', '', '10-revision-v1', '', '', '2014-08-14 12:17:40', '2014-08-14 12:17:40', '', 10, 'http://localhost/itsanoop.in/?p=15', 0, 'revision', '', 0),
(16, 1, '2014-08-14 12:18:08', '2014-08-14 12:18:08', 'In this article I am trying to explain how to set up an elastic server on EC2 instance. Before going to start we need to have an EC2 instance and I have an instance with Ubuntu 14.10 LTE installed.\r\n\r\nNormally we setup elastic search server in a separate EC2 instance for isolating the code base from the elastic search server. Elastic server is build on top of apache solir, to know more about elastic search server click here. Elastic search server has a rich set of restful API’s for communicate with the server; you could find the documentation here.\r\n\r\nAs a first step we need to enable some ports to communicate with the elastic search server.  From the amazon console we need to create a new security group which opens port 9300 (for elastic search transport), 22 (SSH) and port 9200 (for HTTP communication). You can change the security group rules at any time.\r\n\r\nBefore installing elastic search server we need to install openjdk 7 and unzip. For installing the dependencies run the following commands in the terminal.\r\n<blockquote>$ sudo apt-get install openjdk-7-jdk\r\n$ sudo apt-get install zip\r\n$ sudo apt-get update</blockquote>\r\n\r\nElastic search server installation\r\n<blockquote>$ wget\r\n$ cd\r\n$ sudo</blockquote>\r\nServer configuration for EC2\r\n\r\nLike all settings for elastic search, there are multiple ways to configure the nodes. Since we are running the standard download of elastic search, we will be editing the elasticsearch.yml file in the config directory. By default, every setting is commented out. We will give our cluster unique name, and add a few settings to enable EC2 discovery.\r\n$ cd config/\r\n$ nano elasticsearch.yml\r\nThen add the following code in the configuration file.\r\n--\r\nYour access key and secret key are found in the account section of the AWS console.\r\nOnce configured, we can start the elastic search server from the root installation directory using the command.\r\n$ sudo ./bin/elasticsearch  -f', 'Install elastic search on amazon EC2 instance', '', 'inherit', 'open', 'open', '', '10-revision-v1', '', '', '2014-08-14 12:18:08', '2014-08-14 12:18:08', '', 10, 'http://localhost/itsanoop.in/?p=16', 0, 'revision', '', 0),
(17, 1, '2014-08-14 12:19:32', '2014-08-14 12:19:32', 'In this article I am trying to explain how to set up an elastic server on EC2 instance. Before going to start we need to have an EC2 instance and I have an instance with Ubuntu 14.10 LTE installed.\r\n\r\nNormally we setup elastic search server in a separate EC2 instance for isolating the code base from the elastic search server. Elastic server is build on top of apache solir, to know more about elastic search server click here. Elastic search server has a rich set of restful API’s for communicate with the server; you could find the documentation here.\r\n\r\nAs a first step we need to enable some ports to communicate with the elastic search server.  From the amazon console we need to create a new security group which opens port 9300 (for elastic search transport), 22 (SSH) and port 9200 (for HTTP communication). You can change the security group rules at any time.\r\n\r\nBefore installing elastic search server we need to install openjdk 7 and unzip. For installing the dependencies run the following commands in the terminal.\r\n<blockquote>$ sudo apt-get install openjdk-7-jdk\r\n$ sudo apt-get install zip\r\n$ sudo apt-get update</blockquote>\r\nElastic search server installation\r\n<blockquote>$ wget\r\n$ cd\r\n$ sudo</blockquote>\r\n<strong>Server configuration for EC2</strong>\r\n\r\nLike all settings for elastic search, there are multiple ways to configure the nodes. Since we are running the standard download of elastic search, we will be editing the elasticsearch.yml file in the config directory. By default, every setting is commented out. We will give our cluster unique name, and add a few settings to enable EC2 discovery.\r\n$ cd config/\r\n$ nano elasticsearch.yml\r\nThen add the following code in the configuration file.\r\n--\r\nYour access key and secret key are found in the account section of the AWS console.\r\nOnce configured, we can start the elastic search server from the root installation directory using the command.\r\n$ sudo ./bin/elasticsearch  -f', 'Install elastic search on amazon EC2 instance', '', 'inherit', 'open', 'open', '', '10-revision-v1', '', '', '2014-08-14 12:19:32', '2014-08-14 12:19:32', '', 10, 'http://localhost/itsanoop.in/?p=17', 0, 'revision', '', 0),
(18, 1, '2014-08-14 12:30:50', '2014-08-14 12:30:50', 'In this article I am trying to explain how to set up an elastic server on EC2 instance. Before going to start we need to have an EC2 instance and I have an instance with Ubuntu 14.10 LTE installed.\r\n\r\nNormally we setup elastic search server in a separate EC2 instance for isolating the code base from the elastic search server. Elastic server is build on top of apache solir, to know more about elastic search server click here. Elastic search server has a rich set of restful API’s for communicate with the server; you could find the documentation here.\r\n\r\nAs a first step we need to enable some ports to communicate with the elastic search server.  From the amazon console we need to create a new security group which opens port 9300 (for elastic search transport), 22 (SSH) and port 9200 (for HTTP communication). You can change the security group rules at any time.\r\n\r\nBefore installing elastic search server we need to install openjdk 7 and unzip. For installing the dependencies run the following commands in the terminal.\r\n<blockquote>$ sudo apt-get install openjdk-7-jdk\r\n$ sudo apt-get install zip\r\n$ sudo apt-get update</blockquote>\r\nElastic search server installation\r\n<blockquote>$ wget\r\n$ cd\r\n$ sudo</blockquote>\r\n<strong>Server configuration for EC2</strong>\r\n\r\nLike all settings for elastic search, there are multiple ways to configure the nodes. Since we are running the standard download of elastic search, we will be editing the elasticsearch.yml file in the config directory. By default, every setting is commented out. We will give our cluster unique name, and add a few settings to enable EC2 discovery.\r\n\r\n\r\n<blockquote>$ cd config/\r\n$ nano elasticsearch.yml</blockquote>\r\n\r\n\r\nThen add the following code in the configuration file.\r\n--\r\nYour access key and secret key are found in the account section of the AWS console.\r\nOnce configured, we can start the elastic search server from the root installation directory using the command.\r\n\r\n\r\n<blockquote>$ sudo ./bin/elasticsearch  -f</blockquote>\r\n\r\n', 'Install elastic search on amazon EC2 instance', '', 'inherit', 'open', 'open', '', '10-revision-v1', '', '', '2014-08-14 12:30:50', '2014-08-14 12:30:50', '', 10, 'http://localhost/itsanoop.in/?p=18', 0, 'revision', '', 0),
(19, 1, '2014-08-14 13:17:13', '2014-08-14 13:17:13', 'In this article I am trying to explain how to set up an elastic server on EC2 instance. Before going to start we need to have an EC2 instance and I have an instance with Ubuntu 14.10 LTE installed.\n\nNormally we setup elastic search server in a separate EC2 instance for isolating the code base from the elastic search server. Elastic server is build on top of apache solir, to know more about elastic search server click here. Elastic search server has a rich set of restful API’s for communicate with the server; you could find the documentation here.\n\nAs a first step we need to enable some ports to communicate with the elastic search server.  From the amazon console we need to create a new security group which opens port 9300 (for elastic search transport), 22 (SSH) and port 9200 (for HTTP communication). You can change the security group rules at any time.\n\nBefore installing elastic search server we need to install openjdk 7 and unzip. For installing the dependencies run the following commands in the terminal.\n<pre>sudo apt-get install openjdk-7-jdk\nsudo apt-get install zip\nsudo apt-get update\n</pre>\nElastic search server installation\n<pre>wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.0.1.zip\nsudo unzip elasticsearch-1.0.1.zip \ncd elasticsearch-1.0.1\nsudo bin/plugin -install elasticsearch/elasticsearch-cloud-aws/2.0.0.RC1\n</pre>\n<strong>Server configuration for EC2</strong>\n\nLike all settings for elastic search, there are multiple ways to configure the nodes. Since we are running the standard download of elastic search, we will be editing the elasticsearch.yml file in the config directory. By default, every setting is commented out. We will give our cluster unique name, and add a few settings to enable EC2 discovery.\n<pre>cd config/\nnano elasticsearch.yml\n</pre>\nThen add the following code in the configuration file.\n<pre>cluster.name: \ncloud.aws.access_key: \ncloud.aws.secret_key: \ndiscovery.type: ec2\n</pre>\nYour access key and secret key are found in the account section of the AWS console.\nOnce configured, we can start the elastic search server from the root installation directory using the command.\n<pre>sudo ./bin/elasticsearch  -f\n</pre>\n\nThanks for reading, If have any ', 'Install elastic search on amazon EC2 instance', '', 'inherit', 'open', 'open', '', '10-autosave-v1', '', '', '2014-08-14 13:17:13', '2014-08-14 13:17:13', '', 10, 'http://localhost/itsanoop.in/?p=19', 0, 'revision', '', 0),
(20, 1, '2014-08-14 12:37:14', '2014-08-14 12:37:14', 'In this article I am trying to explain how to set up an elastic server on EC2 instance. Before going to start we need to have an EC2 instance and I have an instance with Ubuntu 14.10 LTE installed.\r\n\r\nNormally we setup elastic search server in a separate EC2 instance for isolating the code base from the elastic search server. Elastic server is build on top of apache solir, to know more about elastic search server click here. Elastic search server has a rich set of restful API’s for communicate with the server; you could find the documentation here.\r\n\r\nAs a first step we need to enable some ports to communicate with the elastic search server.  From the amazon console we need to create a new security group which opens port 9300 (for elastic search transport), 22 (SSH) and port 9200 (for HTTP communication). You can change the security group rules at any time.\r\n\r\nBefore installing elastic search server we need to install openjdk 7 and unzip. For installing the dependencies run the following commands in the terminal.\r\n<pre>\r\nsudo apt-get install openjdk-7-jdk\r\nsudo apt-get install zip\r\nsudo apt-get update\r\n</pre>\r\n\r\nElastic search server installation\r\n<pre>\r\nwget\r\ncd\r\nsudo\r\n</pre>\r\n\r\n<strong>Server configuration for EC2</strong>\r\n\r\nLike all settings for elastic search, there are multiple ways to configure the nodes. Since we are running the standard download of elastic search, we will be editing the elasticsearch.yml file in the config directory. By default, every setting is commented out. We will give our cluster unique name, and add a few settings to enable EC2 discovery.\r\n\r\n<pre>\r\ncd config/\r\nnano elasticsearch.yml\r\n</pre>\r\n\r\n\r\nThen add the following code in the configuration file.\r\n--\r\nYour access key and secret key are found in the account section of the AWS console.\r\nOnce configured, we can start the elastic search server from the root installation directory using the command.\r\n\r\n<pre>\r\nsudo ./bin/elasticsearch  -f\r\n</pre>\r\n\r\n\r\n', 'Install elastic search on amazon EC2 instance', '', 'inherit', 'open', 'open', '', '10-revision-v1', '', '', '2014-08-14 12:37:14', '2014-08-14 12:37:14', '', 10, 'http://localhost/itsanoop.in/?p=20', 0, 'revision', '', 0),
(21, 1, '2014-08-14 12:38:09', '2014-08-14 12:38:09', '<a href="http://localhost/itsanoop.in/wp-content/uploads/2014/08/aws_logo.jpg"><img src="http://localhost/itsanoop.in/wp-content/uploads/2014/08/aws_logo-300x109.jpg" alt="aws_logo" width="300" height="109" class="alignnone size-medium wp-image-13" /></a>In this article I am trying to explain how to set up an elastic server on EC2 instance. Before going to start we need to have an EC2 instance and I have an instance with Ubuntu 14.10 LTE installed.\r\n\r\nNormally we setup elastic search server in a separate EC2 instance for isolating the code base from the elastic search server. Elastic server is build on top of apache solir, to know more about elastic search server click here. Elastic search server has a rich set of restful API’s for communicate with the server; you could find the documentation here.\r\n\r\nAs a first step we need to enable some ports to communicate with the elastic search server.  From the amazon console we need to create a new security group which opens port 9300 (for elastic search transport), 22 (SSH) and port 9200 (for HTTP communication). You can change the security group rules at any time.\r\n\r\nBefore installing elastic search server we need to install openjdk 7 and unzip. For installing the dependencies run the following commands in the terminal.\r\n<pre>\r\nsudo apt-get install openjdk-7-jdk\r\nsudo apt-get install zip\r\nsudo apt-get update\r\n</pre>\r\n\r\nElastic search server installation\r\n<pre>\r\nwget\r\ncd\r\nsudo\r\n</pre>\r\n\r\n<strong>Server configuration for EC2</strong>\r\n\r\nLike all settings for elastic search, there are multiple ways to configure the nodes. Since we are running the standard download of elastic search, we will be editing the elasticsearch.yml file in the config directory. By default, every setting is commented out. We will give our cluster unique name, and add a few settings to enable EC2 discovery.\r\n\r\n<pre>\r\ncd config/\r\nnano elasticsearch.yml\r\n</pre>\r\n\r\n\r\nThen add the following code in the configuration file.\r\n--\r\nYour access key and secret key are found in the account section of the AWS console.\r\nOnce configured, we can start the elastic search server from the root installation directory using the command.\r\n\r\n<pre>\r\nsudo ./bin/elasticsearch  -f\r\n</pre>\r\n\r\n\r\n', 'Install elastic search on amazon EC2 instance', '', 'inherit', 'open', 'open', '', '10-revision-v1', '', '', '2014-08-14 12:38:09', '2014-08-14 12:38:09', '', 10, 'http://localhost/itsanoop.in/?p=21', 0, 'revision', '', 0),
(22, 1, '2014-08-14 12:39:51', '2014-08-14 12:39:51', '<a href="http://localhost/itsanoop.in/wp-content/uploads/2014/08/aws_logo.jpg"><img class="alignnone size-medium wp-image-13" src="http://localhost/itsanoop.in/wp-content/uploads/2014/08/aws_logo-300x109.jpg" alt="aws_logo" width="300" height="109" /></a>\r\n\r\nIn this article I am trying to explain how to set up an elastic server on EC2 instance. Before going to start we need to have an EC2 instance and I have an instance with Ubuntu 14.10 LTE installed.\r\n\r\nNormally we setup elastic search server in a separate EC2 instance for isolating the code base from the elastic search server. Elastic server is build on top of apache solir, to know more about elastic search server click here. Elastic search server has a rich set of restful API’s for communicate with the server; you could find the documentation here.\r\n\r\nAs a first step we need to enable some ports to communicate with the elastic search server.  From the amazon console we need to create a new security group which opens port 9300 (for elastic search transport), 22 (SSH) and port 9200 (for HTTP communication). You can change the security group rules at any time.\r\n\r\nBefore installing elastic search server we need to install openjdk 7 and unzip. For installing the dependencies run the following commands in the terminal.\r\n<pre>sudo apt-get install openjdk-7-jdk\r\nsudo apt-get install zip\r\nsudo apt-get update\r\n</pre>\r\nElastic search server installation\r\n<pre>wget\r\ncd\r\nsudo\r\n</pre>\r\n<strong>Server configuration for EC2</strong>\r\n\r\nLike all settings for elastic search, there are multiple ways to configure the nodes. Since we are running the standard download of elastic search, we will be editing the elasticsearch.yml file in the config directory. By default, every setting is commented out. We will give our cluster unique name, and add a few settings to enable EC2 discovery.\r\n<pre>cd config/\r\nnano elasticsearch.yml\r\n</pre>\r\nThen add the following code in the configuration file.\r\n--\r\nYour access key and secret key are found in the account section of the AWS console.\r\nOnce configured, we can start the elastic search server from the root installation directory using the command.\r\n<pre>sudo ./bin/elasticsearch  -f\r\n</pre>', 'Install elastic search on amazon EC2 instance', '', 'inherit', 'open', 'open', '', '10-revision-v1', '', '', '2014-08-14 12:39:51', '2014-08-14 12:39:51', '', 10, 'http://localhost/itsanoop.in/?p=22', 0, 'revision', '', 0),
(23, 1, '2014-08-14 13:11:57', '2014-08-14 13:11:57', '<a href="http://localhost/itsanoop.in/wp-content/uploads/2014/08/aws_logo.jpg"><img class="alignnone size-medium wp-image-13" src="http://localhost/itsanoop.in/wp-content/uploads/2014/08/aws_logo-300x109.jpg" alt="aws_logo" width="300" height="109" /></a>\r\n\r\nIn this article I am trying to explain how to set up an elastic server on EC2 instance. Before going to start we need to have an EC2 instance and I have an instance with Ubuntu 14.10 LTE installed.\r\n\r\nNormally we setup elastic search server in a separate EC2 instance for isolating the code base from the elastic search server. Elastic server is build on top of apache solir, to know more about elastic search server click here. Elastic search server has a rich set of restful API’s for communicate with the server; you could find the documentation here.\r\n\r\nAs a first step we need to enable some ports to communicate with the elastic search server.  From the amazon console we need to create a new security group which opens port 9300 (for elastic search transport), 22 (SSH) and port 9200 (for HTTP communication). You can change the security group rules at any time.\r\n\r\nBefore installing elastic search server we need to install openjdk 7 and unzip. For installing the dependencies run the following commands in the terminal.\r\n<pre>sudo apt-get install openjdk-7-jdk\r\nsudo apt-get install zip\r\nsudo apt-get update\r\n</pre>\r\nElastic search server installation\r\n<pre>wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.0.1.zip\r\nsudo unzip elasticsearch-1.0.1.zip \r\ncd elasticsearch-1.0.1\r\nsudo bin/plugin -install elasticsearch/elasticsearch-cloud-aws/2.0.0.RC1\r\n</pre>\r\n<strong>Server configuration for EC2</strong>\r\n\r\nLike all settings for elastic search, there are multiple ways to configure the nodes. Since we are running the standard download of elastic search, we will be editing the elasticsearch.yml file in the config directory. By default, every setting is commented out. We will give our cluster unique name, and add a few settings to enable EC2 discovery.\r\n<pre>cd config/\r\nnano elasticsearch.yml\r\n</pre>\r\nThen add the following code in the configuration file.\r\n<pre>\r\ncluster.name: <cluster Name>\r\ncloud.aws.access_key: <lookup in AWS>\r\ncloud.aws.secret_key: <lookup in AWS>\r\ndiscovery.type: ec2\r\n</pre>\r\n\r\nYour access key and secret key are found in the account section of the AWS console.\r\nOnce configured, we can start the elastic search server from the root installation directory using the command.\r\n<pre>sudo ./bin/elasticsearch  -f\r\n</pre>', 'Install elastic search on amazon EC2 instance', '', 'inherit', 'open', 'open', '', '10-revision-v1', '', '', '2014-08-14 13:11:57', '2014-08-14 13:11:57', '', 10, 'http://localhost/itsanoop.in/?p=23', 0, 'revision', '', 0),
(24, 1, '2014-08-14 13:15:09', '2014-08-14 13:15:09', 'In this article I am trying to explain how to set up an elastic server on EC2 instance. Before going to start we need to have an EC2 instance and I have an instance with Ubuntu 14.10 LTE installed.\r\n\r\nNormally we setup elastic search server in a separate EC2 instance for isolating the code base from the elastic search server. Elastic server is build on top of apache solir, to know more about elastic search server click here. Elastic search server has a rich set of restful API’s for communicate with the server; you could find the documentation here.\r\n\r\nAs a first step we need to enable some ports to communicate with the elastic search server.  From the amazon console we need to create a new security group which opens port 9300 (for elastic search transport), 22 (SSH) and port 9200 (for HTTP communication). You can change the security group rules at any time.\r\n\r\nBefore installing elastic search server we need to install openjdk 7 and unzip. For installing the dependencies run the following commands in the terminal.\r\n<pre>sudo apt-get install openjdk-7-jdk\r\nsudo apt-get install zip\r\nsudo apt-get update\r\n</pre>\r\nElastic search server installation\r\n<pre>wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.0.1.zip\r\nsudo unzip elasticsearch-1.0.1.zip \r\ncd elasticsearch-1.0.1\r\nsudo bin/plugin -install elasticsearch/elasticsearch-cloud-aws/2.0.0.RC1\r\n</pre>\r\n<strong>Server configuration for EC2</strong>\r\n\r\nLike all settings for elastic search, there are multiple ways to configure the nodes. Since we are running the standard download of elastic search, we will be editing the elasticsearch.yml file in the config directory. By default, every setting is commented out. We will give our cluster unique name, and add a few settings to enable EC2 discovery.\r\n<pre>cd config/\r\nnano elasticsearch.yml\r\n</pre>\r\nThen add the following code in the configuration file.\r\n<pre>cluster.name: \r\ncloud.aws.access_key: \r\ncloud.aws.secret_key: \r\ndiscovery.type: ec2\r\n</pre>\r\nYour access key and secret key are found in the account section of the AWS console.\r\nOnce configured, we can start the elastic search server from the root installation directory using the command.\r\n<pre>sudo ./bin/elasticsearch  -f\r\n</pre>', 'Install elastic search on amazon EC2 instance', '', 'inherit', 'open', 'open', '', '10-revision-v1', '', '', '2014-08-14 13:15:09', '2014-08-14 13:15:09', '', 10, 'http://localhost/itsanoop.in/2014/08/10-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2014-08-14 13:17:43', '2014-08-14 13:17:43', 'In this article I am trying to explain how to set up an elastic server on EC2 instance. Before going to start we need to have an EC2 instance and I have an instance with Ubuntu 14.10 LTE installed.\r\n\r\nNormally we setup elastic search server in a separate EC2 instance for isolating the code base from the elastic search server. Elastic server is build on top of apache solir, to know more about elastic search server click here. Elastic search server has a rich set of restful API’s for communicate with the server; you could find the documentation here.\r\n\r\nAs a first step we need to enable some ports to communicate with the elastic search server.  From the amazon console we need to create a new security group which opens port 9300 (for elastic search transport), 22 (SSH) and port 9200 (for HTTP communication). You can change the security group rules at any time.\r\n\r\nBefore installing elastic search server we need to install openjdk 7 and unzip. For installing the dependencies run the following commands in the terminal.\r\n<pre>sudo apt-get install openjdk-7-jdk\r\nsudo apt-get install zip\r\nsudo apt-get update\r\n</pre>\r\nElastic search server installation\r\n<pre>wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.0.1.zip\r\nsudo unzip elasticsearch-1.0.1.zip \r\ncd elasticsearch-1.0.1\r\nsudo bin/plugin -install elasticsearch/elasticsearch-cloud-aws/2.0.0.RC1\r\n</pre>\r\n<strong>Server configuration for EC2</strong>\r\n\r\nLike all settings for elastic search, there are multiple ways to configure the nodes. Since we are running the standard download of elastic search, we will be editing the elasticsearch.yml file in the config directory. By default, every setting is commented out. We will give our cluster unique name, and add a few settings to enable EC2 discovery.\r\n<pre>cd config/\r\nnano elasticsearch.yml\r\n</pre>\r\nThen add the following code in the configuration file.\r\n<pre>cluster.name: \r\ncloud.aws.access_key: \r\ncloud.aws.secret_key: \r\ndiscovery.type: ec2\r\n</pre>\r\nYour access key and secret key are found in the account section of the AWS console.\r\nOnce configured, we can start the elastic search server from the root installation directory using the command.\r\n<pre>sudo ./bin/elasticsearch  -f\r\n</pre>\r\n\r\nThanks for reading! If have any doubts please put a comment and let''s discuss.', 'Install elastic search on amazon EC2 instance', '', 'inherit', 'open', 'open', '', '10-revision-v1', '', '', '2014-08-14 13:17:43', '2014-08-14 13:17:43', '', 10, 'http://localhost/itsanoop.in/2014/08/10-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2014-08-14 13:21:24', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'open', 'open', '', '', '', '', '2014-08-14 13:21:24', '0000-00-00 00:00:00', '', 0, 'http://localhost/itsanoop.in/?p=26', 1, 'nav_menu_item', '', 0),
(27, 1, '2014-08-14 13:21:26', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-08-14 13:21:26', '0000-00-00 00:00:00', '', 0, 'http://localhost/itsanoop.in/?p=27', 1, 'nav_menu_item', '', 0),
(30, 1, '2014-08-14 13:25:37', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'open', 'open', '', '', '', '', '2014-08-14 13:25:37', '0000-00-00 00:00:00', '', 0, 'http://localhost/itsanoop.in/?p=30', 1, 'nav_menu_item', '', 0),
(31, 1, '2014-08-14 13:25:39', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-08-14 13:25:39', '0000-00-00 00:00:00', '', 0, 'http://localhost/itsanoop.in/?p=31', 1, 'nav_menu_item', '', 0),
(32, 1, '2014-08-14 13:38:24', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-08-14 13:38:24', '0000-00-00 00:00:00', '', 0, 'http://localhost/itsanoop.in/?p=32', 0, 'post', '', 0),
(33, 1, '2014-08-14 13:48:02', '2014-08-14 13:48:02', '', 'anoop', '', 'inherit', 'open', 'open', '', 'anoop', '', '', '2014-08-14 13:48:02', '2014-08-14 13:48:02', '', 6, 'http://localhost/itsanoop.in/wp-content/uploads/2014/08/anoop.jpg', 0, 'attachment', 'image/jpeg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `apr_terms`
--

CREATE TABLE IF NOT EXISTS `apr_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `apr_terms`
--

INSERT INTO `apr_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Technology', 'technology', 0),
(2, 'Photography', 'photography', 0),
(3, 'post-format-quote', 'post-format-quote', 0),
(4, 'post-format-aside', 'post-format-aside', 0),
(6, 'Amazon EC2', 'amazon-ec2', 0),
(7, 'Elastic Search', 'elastic-search', 0);

-- --------------------------------------------------------

--
-- Table structure for table `apr_term_relationships`
--

CREATE TABLE IF NOT EXISTS `apr_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `apr_term_relationships`
--

INSERT INTO `apr_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(10, 1, 0),
(10, 4, 0),
(10, 6, 0),
(10, 7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `apr_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `apr_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `apr_term_taxonomy`
--

INSERT INTO `apr_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', 'Technical posts', 0, 1),
(2, 2, 'category', 'Travel and photography posts', 0, 0),
(3, 3, 'post_format', '', 0, 0),
(4, 4, 'post_format', '', 0, 1),
(6, 6, 'post_tag', '', 0, 1),
(7, 7, 'post_tag', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `apr_usermeta`
--

CREATE TABLE IF NOT EXISTS `apr_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `apr_usermeta`
--

INSERT INTO `apr_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'first_name', ''),
(2, 1, 'last_name', ''),
(3, 1, 'nickname', 'anoop'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'apr_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'apr_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp350_media,wp360_revisions,wp360_locks,wp390_widgets'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'apr_user-settings', 'libraryContent=browse&imgsize=thumbnail&editor=html'),
(15, 1, 'apr_user-settings-time', '1408024093'),
(16, 1, 'apr_dashboard_quick_press_last_post_id', '3'),
(17, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(18, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:8:"add-post";i:1;s:12:"add-post_tag";i:2;s:15:"add-post_format";}'),
(19, 1, 'nav_menu_recently_edited', '5');

-- --------------------------------------------------------

--
-- Table structure for table `apr_users`
--

CREATE TABLE IF NOT EXISTS `apr_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `apr_users`
--

INSERT INTO `apr_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'anoop', '$P$BIiyiNGefiHInhUiNYqN1G400lxuCm0', 'anoop', 'itsanoop@outlook.com', '', '2014-08-08 05:41:56', '', 0, 'anoop');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
