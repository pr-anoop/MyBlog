<?php
/**
 * The base configurations of the WordPress.
 *
 * This file has the following configurations: MySQL settings, Table Prefix,
 * Secret Keys, WordPress Language, and ABSPATH. You can find more information
 * by visiting {@link http://codex.wordpress.org/Editing_wp-config.php Editing
 * wp-config.php} Codex page. You can get the MySQL settings from your web host.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'itsanoop');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', 'root');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         ',0H>voan5zLU2{vp;:PmA*`^J5:XW`9rq+:V0;TftW#Gr(6}cs5TX/CC,yN.4Ql^');
define('SECURE_AUTH_KEY',  'tBr7J&JV9YZQ$w}B/48?E#sSeur%Z/WT[,~ckxD+=JUh-Z9#=n<OHsgeD@8u@;Dx');
define('LOGGED_IN_KEY',    'B$ozo:~Judp7/zH.DHhLk?zdFDh,wmI,@.7%}QD-H;m;|fc}!G9!/-*l2PcWcLXL');
define('NONCE_KEY',        'oqrACm.a-E3UI#@%c|<N?.Tf.Gom>F^`>+`DuzXQKAu-Foyi;E/UdeZ+Nf6l0-:i');
define('AUTH_SALT',        '}!eNnK(+X<hxb.bZ7L{=0HM%q4uku2I.oX|OsF &j/i.2h1p{RCz<E7XP9_e6ht_');
define('SECURE_AUTH_SALT', '~5rc-0qdg@%a.(.0{cMb]E:-~M[DK/tIZGKo=:2;Mf.6e[,s0#vK[OZHT>6#Q-ER');
define('LOGGED_IN_SALT',   '4*hIr]SUsbxg-5x:kUkdm_L*.9,+Y?v6UGg7{urj;ILGza|1:pG HDy>2Zg,m9Kb');
define('NONCE_SALT',       '/omyY!inSvo*kVkBJ!h3^Q)@3eM:!rc%sDyqr4|l:*q`WmluoAc!Y{YBr^d!UgHq');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'apr_';

/**
 * WordPress Localized Language, defaults to English.
 *
 * Change this to localize WordPress. A corresponding MO file for the chosen
 * language must be installed to wp-content/languages. For example, install
 * de_DE.mo to wp-content/languages and set WPLANG to 'de_DE' to enable German
 * language support.
 */
define('WPLANG', '');

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
