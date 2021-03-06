-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 31, 2013 at 03:02 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `shadow`
--

-- --------------------------------------------------------


--
-- Table structure for table `shdw_admin`
--

CREATE TABLE IF NOT EXISTS `shdw_options` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `siteName` varchar(100) NOT NULL,
  `siteTagline` varchar(100) NOT NULL DEFAULT 'A super amazing site.',
  `siteSummary` text NULL,
  `currentApp` varchar(150) NOT NULL DEFAULT 'ninjablack',
  `language` ENUM(
  				'Afrikaans', -- AF
				'Albanian', -- SQ
				'Arabic', -- AR
				'Armenian', -- HY
				'Basque', -- EU
				'Bengali', -- BN
				'Bulgarian', -- BG
				'Catalan', -- CA
				'Cambodian', -- KM
				'Chinese (Mandarin)', -- ZH
				'Croatian', -- HR
				'Czech', -- CS
				'Danish', -- DA
				'Dutch', -- NL
				'English', -- EN
				'Estonian', -- ET
				'Fiji', -- FJ
				'Finnish', -- FI
				'French', -- FR
				'Georgian', -- KA
				'German', -- DE
				'Greek', -- EL
				'Gujarati', -- GU
				'Hebrew', -- HE
				'Hindi', -- HI
				'Hungarian', -- HU
				'Icelandic', -- IS
				'Indonesian', -- ID
				'Irish', -- GA
				'Italian', -- IT
				'Japanese', -- JA
				'Javanese', -- JW
				'Korean', -- KO
				'Latin', -- LA
				'Latvian', -- LV
				'Lithuanian', -- LT
				'Macedonian', -- MK
				'Malay', -- MS
				'Malayalam', -- ML
				'Maltese', -- MT
				'Maori', -- MI
				'Marathi', -- MR
				'Mongolian', -- MN
				'Nepali', -- Nepali
				'Norwegian', -- NO
				'Persian', -- FA
				'Polish', -- PL
				'Portuguese', -- PT
				'Punjabi', -- PA
				'Quechua', -- QU
				'Romanian', -- RO
				'Russian', -- RU
				'Samoan', -- SM
				'Serbian', -- SR
				'Slovak', -- SK
				'Slovenian', -- SL
				'Spanish', -- ES
				'Swahili', -- SW
				'Swedish ', -- SV
				'Tamil', -- TA
				'Tatar', -- TT
				'Telugu', -- TE
				'Thai', -- TH
				'Tibetan', -- BO
				'Tonga', -- TO
				'Turkish', -- TR
				'Ukrainian', -- UK
				'Urdu', -- UR
				'Uzbek', -- UZ
				'Vietnamese', -- VI
				'Welsh', -- CY
				'Xhosa' -- XH
				) NOT NULL DEFAULT 'English',
  `timezone` ENUM(
  				'GMTMINUS1200INTERNATIONALDATELINEWEST', -- (GMT-12:00) International Date Line West
				'GMTMINUS1100MIDWAYISLAND_SAMOA', -- (GMT-11:00) Midway Island, Samoa
				'GMTMINUS1000HAWAII', -- (GMT-10:00) Hawaii
				'GMTMINUS0900ALASKA', -- (GMT-09:00) Alaska
				'GMTMINUS0800PACIFICTIME', -- (GMT-08:00) Pacific Time (US & Canada)
				'GMTMINUS0800TIJUANA_BAJACALIFORNIA', -- GMT-08:00) Tijuana, Baja California
				'GMTMINUS0700ARIZONA', -- (GMT-07:00) Arizona
				'GMTMINUS0700MOUNTAINTIME', -- (GMT-07:00) Mountain Time (US & Canada)
				'GMTMINUS0700CHIHUAHUA_LAPAZ_MAZATLAN', -- (GMT-07:00) Chihuahua, La Paz, Mazatlan
				'GMTMINUS0600CENTRALAMERICA', -- (GMT-06:00) Central America
				'GMTMINUS0600CENTRALTIME', -- (GMT-06:00) Central Time (US & Canada)
				'GMTMINUS0600GUADALAJARA_MEXICOCITY', -- (GMT-06:00) Guadalajara, Mexico City, Monterrey
				'GMTMINUS0600SASKATCHEWAN', -- (GMT-06:00) Saskatchewan
				'GMTMINUS0500BOGOTA_LIMA_QUITO_RIOBRANCO', -- (GMT-05:00) Bogota, Lima, Quito, Rio Branco
				'GMTMINUS0500EASTERNTIME', -- GMT-05:00) Eastern Time (US & Canada)
				'GMTMINUS0500INDIANA', -- (GMT-05:00) Indiana (East)
				'GMTMINUS0430CARACAS', -- (GMT-04:30) Caracas
				'GMTMINUS0400ASUNCION', -- (GMT-04:00) Asuncion
				'GMTMINUS0400ATLANTICTIME', -- (GMT-04:00) Atlantic Time (Canada)
				'GMTMINUS0400LAPAZ', -- (GMT-04:00) La Paz
				'GMTMINUS0400MANAUS', -- (GMT-04:00) Manaus
				'GMTMINUS0400SANTIAGO', -- (GMT-04:00) Santiago
				'GMTMINUS0330NEWFOUNDLAND', -- (GMT-03:30) Newfoundland
				'GMTMINUS0300BRASILIA', -- (GMT-03:00) Brasilia
				'GMTMINUS0300BUENOSAIRES', -- (GMT-03:00) Buenos Aires
				'GMTMINUS0300BUENOSAIRES_GEORGETOWN', -- (GMT-03:00) Buenos Aires, Georgetown
				'GMTMINUS0300GREENLAND', -- (GMT-03:00) Greenland
				'GMTMINUS0300MONTEVIDEO', -- (GMT-03:00) Montevideo
				'GMTMINUS0300_SALVADOR', -- (GMT-03:00) Salvador
				'GMTMINUS0200MIDATLANTIC', -- (GMT-02:00) Mid-Atlantic
				'GMTMINUS0100AZORES', -- (GMT-01:00) Azores
				'GMTMINUS0100CAPEVERDIS', -- (GMT-01:00) Cape Verde Is.
				'GMT_CASABLANCA', -- (GMT) Casablanca
				'GMT_COORDINATEDUNIVERSALTIME', -- (GMT) Coordinated Universal Time
				'GMT_CASABLANCA_MONTROVIA_REYKJAVIK', -- (GMT) Casablanca, Monrovia, Reykjavik
				'GMT_DUBLIN_EDINBURGH_LISBON_LONDON', -- (GMT) Greenwich Mean Time : Dublin, Edinburgh, Lisbon, London
				'GMTPLUS0100_AMSTERDAM_BERLIN_BERN_ROME', -- (GMT+01:00) Amsterdam, Berlin, Bern, Rome, Stockholm, Vienna
				'GMTPLUS0100BELGRADE_BRATISLAVA_BUDAPEST', -- (GMT+01:00) Belgrade, Bratislava, Budapest, Ljubljana, Prague
				'GMTPLUS0100BRUSSELS_COPENHAGEN_MADRID', -- (GMT+01:00) Brussels, Copenhagen, Madrid, Paris
				'GMTPLUS0100SARAJEVO_SKOPJE_WARSAW_ZAGREB', -- (GMT+01:00) Sarajevo, Skopje, Warsaw, Zagreb
				'GMTPLUS0100WESTCENTRALAFRICA', -- (GMT+01:00) West Central Africa
				'GMTPLUS0200AMMAN', -- (GMT+02:00) Amman
				'GMTPLUS0200ATHENS_BUCHAREST_ISTANBUL', -- (GMT+02:00) Athens, Bucharest, Istanbul
				'GMTPLUS0200BEIRUT', -- (GMT+02:00) Beirut
				'GMTPLUS0200MINSK', -- (GMT+02:00) Minsk
				'GMTPLUS0200CAIRO', -- (GMT+02:00) Cairo
				'GMTPLUS0200_DAMASCUS', -- (GMT+02:00) Damascus
				'GMTPLUS0200HARARE_PRETORIA', -- (GMT+02:00) Harare, Pretoria
				'GMTPLUS0200HELSINKI_KYIV_RIGA_VILNIUS', -- (GMT+02:00) Helsinki, Kyiv, Riga, Sofia, Tallinn, Vilnius
				'GMTPLUS0200JERUSALEM', -- (GMT+02:00) Jerusalem
				'GMTPLUS0200WINDHOEK', -- (GMT+02:00) Windhoek
				'GMTPLUS0300BAGHDAD', -- (GMT+03:00) Baghdad
				'GMT_PLUS0300KALININGRAD_MINSK', -- (GMT+03:00) Kaliningrad, Minsk
				'GMTPLUS0300KUWAIT_RIYADH', -- (GMT+03:00) Kuwait, Riyadh
				'GMTPLUS0300MOSCOW_STPETERSBURG_VOLGOGRAD', -- (GMT+04:00) Moscow, St. Petersburg, Volgograd
				'GMTPLUS0400PORTLOUIS', -- (GMT+04:00) Port Louis
				'GMTPLUS0300NAIROBI', -- (GMT+03:00) Nairobi
				'GMTPLUS0300TBILISI', -- (GMT+03:00) Tbilisi
				'GMTPLUS0330TEHRAN', -- (GMT+03:30) Tehran
				'GMTPLUS0400ABUDHABI_MUSCAT', -- (GMT+04:00) Abu Dhabi, Muscat
				'GMTPLUS0400BAKU', -- (GMT+04:00) Baku
				'GMTPLUS0400CAUCASUSSTANDARDTIME', -- (GMT+04:00) Caucasus Standard Time
				'GMTPLUS0400CAUCASUSSTANDARDTIME', -- (GMT+04:00) Caucasus Standard Time
				'GMTPLUS0400YEREVAN', -- (GMT+04:00) Yerevan
				'GMTPLUS0430KABUL', -- (GMT+04:30) Kabul
				'GMTPLUS0500EKATERINBURG', -- (GMT+05:00) Ekaterinburg
				'GMTPLUS0500ISLAMABAD_KARACHI', -- (GMT+05:00) Islamabad, Karachi
				'GMTPLUS0500ISLAMABAD_KARACHI_TASHKENT', -- (GMT+05:00) Tashkent
				'GMTPLUS0530CHENNAI_KOLKATA_MUMBAI', -- (GMT+05:30) Chennai, Kolkata, Mumbai, New Delhi
				'GMTPLUS0530SRIJAYAWARDENEPURA', -- (GMT+05:30) Sri Jayawardenepura
				'GMTPLUS0545KATHMANDU', -- (GMT+05:45) Kathmandu
				'GMTPLUS0600ALMATY_NOVOSIBIRSK', -- (GMT+06:00) Almaty, Novosibirsk
				'GMTPLUS0600ASTANA_DHAKA', -- (GMT+06:00) Astana, Dhaka
				'GMTPLUS0600DHAKA', -- (GMT+06:00) Dhaka
				'GMTPLUS0630_YANGON', -- (GMT+06:30) Yangon (Rangoon)
				'GMTPLUS0700_BANGKOK_HANOI_JAKARTA', -- (GMT+07:00) Bangkok, Hanoi, Jakarta
				'GMTPLUS0700KRASNOYARSK', -- (GMT+07:00) Krasnoyarsk
				'GMTPLUS0800BEIJING_CHONGQING_HONGKONG', -- (GMT+08:00) Beijing, Chongqing, Hong Kong, Urumqi
				'GMTPLUS0800IRKUTSK_ULAANBATAAR', -- (GMT+08:00) Irkutsk, Ulaan Bataar
				'GMTPLUS0800_ULAANBAATAR', -- (GMT+08:00) Ulaanbaatar
				'GMTPLUS0800KUALALUMPUR_SINGAPORE', -- (GMT+08:00) Kuala Lumpur, Singapore
				'GMTPLUS0800PERTH', -- (GMT+08:00) Perth
				'GMTPLUS0800TAIPEI', -- (GMT+08:00) Taipei
				'GMTPLUS0900OSAKA_SAPPORO_TOKYO', -- (GMT+09:00) Osaka, Sapporo, Tokyo
				'GMTPLUS0900SEOUL', -- (GMT+09:00) Seoul
				'GMTPLUS0900YAKUTSK', -- (GMT+09:00) Yakutsk
				'GMTPLUS0930ADELAIDE', -- (GMT+09:30) Adelaide
				'GMTPLUS0930DARWIN', -- (GMT+09:30) Darwin
				'GMTPLUS1000BRISBANE', -- (GMT+10:00) Brisbane
				'GMTPLUS1000CANBERRA_MELBOURNE_SYDNEY', -- (GMT+10:00) Canberra, Melbourne, Sydney
				'GMTPLUS1000GUAM_PORTMORESBY', -- (GMT+10:00) Guam, Port Moresby
				'GMTPLUS1000HOBART', -- (GMT+10:00) Hobart
				'GMTPLUS1000VLADIVOSTOK', -- (GMT+10:00) Vladivostok
				'GMTPLUS0600MAGADAN', -- (GMT+12:00) Magadan
				'GMTPLUS1100MAGADAN_SOLOMONIS', -- (GMT+11:00) Magadan, Solomon Is., New Caledonia
				'GMTPLUS1200AUCKLAND_WELLINGTON', -- (GMT+12:00) Auckland, Wellington
				'GMTPLUS1200FIJI_KAMCHATKA_MARSHALLIS', -- (GMT+12:00) Fiji, Kamchatka, Marshall Is.
				'GMTPLUS1300NUKU_ALOFA' -- (GMT+13:00) Nuku'alofa
				) NOT NULL DEFAULT 'GMT_COORDINATEDUNIVERSALTIME',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------


--
-- Table structure for table `shdw_users`
--

CREATE TABLE IF NOT EXISTS `shdw_users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role` enum('master','admin','member', 'author','designer','developer','affiliate') NOT NULL DEFAULT 'member',
  `prefix` varchar(40) NULL,
  `firstName` varchar(40) NOT NULL,
  `middleName` varchar(40) NULL,
  `maiden` VARCHAR(40) NULL,
  `lastName` varchar(80) NOT NULL,
  `suffix` varchar(40) NULL,
  `username` varchar(30) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `securityQuestion1` TINYTEXT NULL,
  `securityQuestion2` TINYTEXT NULL,
  `securityQuestion3` TINYTEXT NULL,
  `dateRegistered` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lastLoginDate` TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastLoginIp` VARCHAR(39) NOT NULL,
  `dateModified` TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00',
  `releaseLevel` ENUM('alpha','beta','standard') DEFAULT 'standard',
  `dateExpires` date DEFAULT NULL,
  `birthdate` DATE NULL,
  `sex` ENUM('male','female') NULL,
  `primaryEmail` VARCHAR(80) NOT NULL,
  `additionalEmails` TINYTEXT NULL, -- stored as serialized array for multiple emails
  `phone` TINYTEXT NULL, -- stored as serialized array for multiple phones
  `address` TEXT NULL, -- stored as serialized array for multiple addresses
  `profilePictureImg` VARCHAR(2056) NOT NULL DEFAULT 'default-profile-picture.jpg',
  `spreadImg` TEXT NOT NULL, -- stored as serialized array for multiple spread images
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `primaryEmail` (`primaryEmail`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1000000000;

-- --------------------------------------------------------


--
-- Table structure for table `shdw_login_failed_attempts`
--

CREATE TABLE IF NOT EXISTS `shdw_login_failed_attempts` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` VARCHAR( 2056 ) NULL,
  `email` VARCHAR( 2056 ) NULL,
  `pass` VARCHAR(2056) NOT NULL,
  `datetimeFailed` TIMESTAMP NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `shdw_carts`
--

CREATE TABLE IF NOT EXISTS `shdw_carts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `quantity` tinyint(3) unsigned NOT NULL,
  `userSessionId` char(32) NOT NULL,
  `productType` enum('coffee','other') NOT NULL,
  `productId` mediumint(8) unsigned NOT NULL,
  `dateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dateModified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `product_type` (`productType`,`productId`),
  KEY `user_session_id` (`userSessionId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `shdw_categories`
--

CREATE TABLE IF NOT EXISTS `shdw_categories` (
  `id` tinyint(5) unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(40) NOT NULL,
  `description` tinytext,
  `image` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

-- --------------------------------------------------------

--
-- Table structure for table `shdw_customers`
--

CREATE TABLE IF NOT EXISTS `shdw_customers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(80) NOT NULL,
  `firstName` varchar(20) NOT NULL,
  `lastName` varchar(40) NOT NULL,
  `address1` varchar(80) NOT NULL,
  `address2` varchar(80) DEFAULT NULL,
  `city` varchar(60) NOT NULL,
  `state` char(2) NOT NULL,
  `zip` mediumint(5) unsigned zerofill NOT NULL,
  `phone` int(10) NOT NULL,
  `dateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `shdw_orders`
--

CREATE TABLE IF NOT EXISTS `shdw_orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customerId` int(10) unsigned NOT NULL,
  `total` decimal(7,2) unsigned DEFAULT NULL,
  `shipping` decimal(5,2) unsigned NOT NULL,
  `ccNumber` mediumint(4) unsigned NOT NULL,
  `orderDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customerId`),
  KEY `order_date` (`orderDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `shdw_order_contents`
--

CREATE TABLE IF NOT EXISTS `shdw_order_contents` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `orderId` int(10) unsigned NOT NULL,
  `productType` enum('coffee','other','sale') DEFAULT NULL,
  `productId` mediumint(8) unsigned NOT NULL,
  `quantity` tinyint(3) unsigned NOT NULL,
  `pricePer` decimal(5,2) unsigned NOT NULL,
  `shipDate` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ship_date` (`shipDate`),
  KEY `product_type` (`productType`,`productId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------


160
161
162
163
164
165
166
167
168
169
170
171
172
173
174
175
176
177
178
179
180
181
182
183
184
185
186
187
188
189
190
191
192
193
194
195
196
197
198
199
200
201
202
203
204
205
206
207
208
209
210
211
212
213
214
215
216
217
218
219
220
221
222
223
224
225
226
227
228
229
230
231
232
233
234
235
236
237
238
239
240
241
242
243
244
245
246
247
248
249
250
251
252
253
254
255
256
257
258
259
260
261
262
263
264
265
266
267
268
269
270
271
272
273
274
275
276
277
278
279
280
281
282
283
284
285
286
287
288
289
290
291
292
293
294
295
296
297
298
299
300
301
302
303
304
305
306
307
308
309
310
311
312
313
314
315
316
317
318
319
320
321
322
323
324
325
326
327
328
329
330
331
332
333
334
335
336
337
338
339
340
341
342
343
344
345
346
347
348
349
350
351
352
353
354
355
356
357
358
359
360
361
362
363
364
365
366
367
368
369
370
371
372
373
374
375
376
377
378
379
380
381
382
383
384
385
386
387
388
389
390
391
392
393
394
395
396
397
398
399
400
401
402
403
404
405
406
407
408
409
410
411
412
413
414
415
416
417
418
419
420
421
422
423
424
425
426
427
428
429
430
431
432
433
434
435
436
437
438
439
440
441
442
443
444
445
446
447
448
449
450
451
452
453
454
455
456
457
458
459
460
461
462
463
464
465
466
467
468
469
470
471
472
473
474
475
476
477
478
479
480
481
482
483
484
485
486
487
488
489
490
491
492
493
494
495
496
497
498
499
500
501
502
503
504
505
506
507
508
509
510
511
512
513
514
515
516
517
518
519
520
521
522
523
524
525
526
527
528
529
530
531
532
533
534
535
536
537
538
539
540
541
542
543
544
545
546
547
548
549
550
551
552
553
554
555
556
557
558
559
560
561
562
563
564
565
566
567
568
569
570
571
572
573
574
575
576
577
578
579
580
581
582
583
584
585
586
587
588
589
590
591
592
593
594
595
596
597
598
599
600
601
602
603
604
605
606
607
608
609
610
611
612
613
614
615
616
617
618
619
620
621
622
623
624
625
626
627
628
629
630
631
632
633
634
635
636
637
638
-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 16, 2013 at 09:59 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `shadow`
--

-- --------------------------------------------------------

--
-- Table structure for table `shdw_admin`
--

CREATE TABLE IF NOT EXISTS `shdw_admin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `adminEmail` varchar(80) NOT NULL,
  `adminPhone` smallint(15) DEFAULT NULL,
  `adminPhoneExt` smallint(10) DEFAULT NULL,
  `siteName` varchar(100) NOT NULL,
  `siteTagline` varchar(100) NOT NULL,
  `siteSummary` text,
  `currentApp` varchar(150) NOT NULL DEFAULT 'ninjablack1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `shdw_carts`
--

CREATE TABLE IF NOT EXISTS `shdw_carts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `quantity` tinyint(3) unsigned NOT NULL,
  `userSessionId` char(32) NOT NULL,
  `productType` enum('coffee','other') NOT NULL,
  `productId` mediumint(8) unsigned NOT NULL,
  `dateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dateModified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `product_type` (`productType`,`productId`),
  KEY `user_session_id` (`userSessionId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `shdw_categories`
--

CREATE TABLE IF NOT EXISTS `shdw_categories` (
  `id` tinyint(5) unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(40) NOT NULL,
  `description` tinytext,
  `image` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `shdw_categories`
--

INSERT INTO `shdw_categories` (`id`, `category`, `description`, `image`) VALUES
(1, 'Allergy', NULL, NULL),
(2, 'Cancer Support', NULL, NULL),
(3, 'Children', NULL, NULL),
(4, 'Circulation', NULL, NULL),
(5, 'Cleansing & Detox', NULL, NULL),
(6, 'Digestion', NULL, NULL),
(7, 'Eyes', NULL, NULL),
(8, 'Immune', NULL, NULL),
(9, 'Men/Women', NULL, NULL),
(10, 'Oral Health', NULL, NULL),
(11, 'Pain', NULL, NULL),
(12, 'Skin', NULL, NULL),
(13, 'Sleep', NULL, NULL),
(14, 'Sports', NULL, NULL),
(15, 'Sleep', NULL, NULL),
(16, 'Urinary Track', NULL, NULL),
(17, 'Weight', NULL, NULL),
(18, 'Mind & Body', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shdw_customers`
--

CREATE TABLE IF NOT EXISTS `shdw_customers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(80) NOT NULL,
  `firstName` varchar(20) NOT NULL,
  `lastName` varchar(40) NOT NULL,
  `address1` varchar(80) NOT NULL,
  `address2` varchar(80) DEFAULT NULL,
  `city` varchar(60) NOT NULL,
  `state` char(2) NOT NULL,
  `zip` mediumint(5) unsigned zerofill NOT NULL,
  `phone` int(10) NOT NULL,
  `dateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `shdw_orders`
--

CREATE TABLE IF NOT EXISTS `shdw_orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customerId` int(10) unsigned NOT NULL,
  `total` decimal(7,2) unsigned DEFAULT NULL,
  `shipping` decimal(5,2) unsigned NOT NULL,
  `ccNumber` mediumint(4) unsigned NOT NULL,
  `orderDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customerId`),
  KEY `order_date` (`orderDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `shdw_order_contents`
--

CREATE TABLE IF NOT EXISTS `shdw_order_contents` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `orderId` int(10) unsigned NOT NULL,
  `productType` enum('coffee','other','sale') DEFAULT NULL,
  `productId` mediumint(8) unsigned NOT NULL,
  `quantity` tinyint(3) unsigned NOT NULL,
  `pricePer` decimal(5,2) unsigned NOT NULL,
  `shipDate` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ship_date` (`shipDate`),
  KEY `product_type` (`productType`,`productId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `shdw_pages`
--

CREATE TABLE IF NOT EXISTS `shdw_pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parentId` int(10) unsigned DEFAULT NULL,
  `creatorId` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `slug` varchar(100) NOT NULL,
  `dateUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dateAdded` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `viewFile` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=73 ;

-- --------------------------------------------------------

--
-- Table structure for table `shdw_products`
--

CREATE TABLE IF NOT EXISTS `shdw_products` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` tinytext NOT NULL,
  `manufacturer` VARCHAR(100),
  `seller` text NULL,
  `category` varchar(50) NOT NULL,
  `description` tinytext NOT NULL,
  `features` text NULL,
  `ingredients` text NULL,
  `availability` enum('Available for sale','Hidden but available for sale','Coming soon','Disabled') NOT NULL DEFAULT 'Available for sale',
  `weight` decimal(5,2) unsigned NOT NULL,
  `image` varchar(2056) NOT NULL,
  `price` decimal(5,2) unsigned NOT NULL,
  `salePrice` decimal(5,2) unsigned,
  `specialOffers` text NULL,
  `SKU` VARCHAR(10) DEFAULT NULL,
  `UPC` int(10) unsigned DEFAULT NULL,
  `stock` mediumint(8) unsigned NOT NULL DEFAULT '100',
  `shippingDetails` text NULL,
  `ratingReview` text NULL,
  `slug` varchar(2056) NOT NULL,
  `externalLink` varchar(2056) NULL,
  `dateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `SKU` (`SKU`),
  UNIQUE KEY `UPC` (`UPC`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

-- --------------------------------------------------------

--
-- Table structure for table `shdw_sales`
--

CREATE TABLE IF NOT EXISTS `shdw_sales` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `productType` VARCHAR(100) DEFAULT NULL,
  `productId` mediumint(8) unsigned NOT NULL,
  `price` decimal(5,2) unsigned NOT NULL,
  `startDate` date NOT NULL,
  `endDate` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `start_date` (`startDate`),
  KEY `product_type` (`productType`,`productId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

-- --------------------------------------------------------

--
-- Table structure for table `shdw_sizes`
--

CREATE TABLE IF NOT EXISTS `shdw_sizes` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `size` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `size` (`size`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

-- --------------------------------------------------------

--
-- Table structure for table `shdw_transactions`
--

CREATE TABLE IF NOT EXISTS `shdw_transactions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `orderId` int(10) unsigned NOT NULL,
  `type` varchar(18) NOT NULL,
  `amount` decimal(7,2) NOT NULL,
  `responseCode` tinyint(1) unsigned NOT NULL,
  `responseReason` tinytext,
  `transactionId` bigint(20) unsigned NOT NULL,
  `response` text NOT NULL,
  `dateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `order_id` (`orderId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------


--
-- Table structure for table `shdw_wish_lists`
--

CREATE TABLE IF NOT EXISTS `shdw_wish_lists` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `quantity` tinyint(3) unsigned NOT NULL,
  `userSessionId` char(32) NOT NULL,
  `productType` enum('coffee','other','sale') DEFAULT NULL,
  `productId` mediumint(8) unsigned NOT NULL,
  `dateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dateModified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `product_type` (`productType`,`productId`),
  KEY `user_session_id` (`userSessionId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;


-- --------------------------------------------------------


--
-- STORED PROCEDURES
--