

This repository
Explore
Gist
Blog
Help
superamazing
2  Unwatch
Unstar 1 Fork 0PRIVATE superamazing / Shadow
 branch: master  Shadow / content / apps / ninjablack_Master / inc / header.inc.php 
 williammosley 6 days ago fixed merge conflict
2 contributors    
 file 108 lines (94 sloc) 4.423 kb  Open EditRawBlameHistory Delete
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
31
32
33
34
35
36
37
38
39
40
41
42
43
44
45
46
47
48
49
50
51
52
53
54
55
56
57
58
59
60
61
62
63
64
65
66
67
68
69
70
71
72
73
74
75
76
77
78
79
80
81
82
83
84
85
86
87
88
89
90
91
92
93
94
95
96
97
98
99
100
101
102
103
104
105
106
107
<?php defined('INDEX') or die() and exit(); // Prevents direct script access
/**
 * Shadow
 *
 * An open source application development framework that streamlines
 * responsive e-ecommerce development for php 5.0.0 or newer
 *
 * @package        Shadow
 * @author         Super Amazing
 * @copyright      Copyright (c) 2010 - 2013, Super Amazing
 * @license        
 * @link           http://shadow.livesuperamazing.com
 * @since          Version 0.1.1 s5
 * -----------------------------------------------------------------
 *
 * This is the main page
 * This page includes the configuration file,
 * the templates, and any content-specific modules.
 */
 
// --------------------------------------------------------------------------------?>
<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->

<head>
    <meta charset="utf-8">
    <!-- <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> in HTACCESS FILE to Avoid Validation Error -->
    <title><?php get_page_header_title(); ?></title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0"/> <!--320-->
<<<<<<< HEAD
    <meta name="keywords" content="Transgender, female, male, discrimination, cary, i am cary, community"/> 
    
    <meta name="author" content="<?php echo ADMIN_NAME; ?>">
=======
    <meta name="author" content="<?php echo ADMIN_NAME; ?>" />
>>>>>>> aaec9117b0e0eb11ebd591f35e01553e6f518bce

    <!-- Favicons -->
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="<?php echo APP_IMG_URL; ?>favicons/favicon-114.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="<?php echo APP_IMG_URL; ?>favicons/favicon-72.png">
    <link rel="shortcut icon" href="<?php echo APP_IMG_URL; ?>favicons/favicon-16.png">
    <!--[if IE]><link rel="shortcut icon" href="<?php echo APP_IMG_URL; ?>favicons/favicon-16.icon"><![endif]-->
    <!-- or, set /favicon-16.ico for IE10 win -->
    
    <?php shdw_header(); ?>
    <link href='http://fonts.googleapis.com/css?family=Sacramento' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="<?php echo APP_STYLE_URL; ?>all.css" type="text/css" media="screen" />

</head>        

<body>

<?php get_pilot(); ?>
<div class="relative">
<nav id="journey-nav-expanded" class="visible-md-up">
        <ul class="journey-nav-expanded-main ptn mtn">
        <li><a href="#">Menu Item</a></li>
        <li><a href="#">Menu Item</a></li>
        <li><a href="#">Menu Item</a></li>
        <li><a href="#">Menu Item</a></li>
    </ul>
    <div class="journey-heading">Section Heading</div>
    <ul>
        <li><a href="#">Menu Item</a></li>
        <li><a href="#">Menu Item</a></li>
        <li><a href="#">Menu Item</a></li>
        <li><a href="#">Menu Item</a></li>
        <li><a href="#">Menu Item</a></li>
    </ul>
</nav><!-- end journey-left-nav-expanded -->
 
<div class="wrapper">
        <div class="journey">
        <header>
                <ul class="journey-bar">
                    <li class="journey-nav-expanded-open">
                        <a href="#journey-nav-expanded">
                            <img class="pull-left" src="<?php echo APP_IMG_URL; ?>menu.png" />
                           </a>
                      </li>
                <li class="journey-nav-expanded-close">
                        <a href="#">
                            <img class="pull-left" src="<?php echo APP_IMG_URL; ?>menu.png" />
                           </a>
                      </li>
                <li>
                        <a href="<?php echo SITE_URL; ?>">
                                <div class="journey-icon-text"><?php get_site_initial(); ?></div>
                        <div class="journey-wordmark"><?php get_site_name(); ?></div>
                    </a>
                </li>
                <li class="pull-right journey-no-hover"><?php login_form('responsive-inline'); ?></li>
            </ul><!-- end journey-bar -->
            <ul class="journey-top-bar">
                    <li class="journey-tab-text">
                        <?php if( SITE_NAME == the_page_title() ) echo 'Home'; else get_page_title(); ?>
                       </li>
            </ul><!-- end journey-top-bar -->
        </header>
        
        <div class="journey-content-container">

    
    
 
Status API Training Shop Blog About © 2013 GitHub, Inc. Terms Privacy Security Contact