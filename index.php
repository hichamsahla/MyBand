<?php

//configuration settings
require 'includes/config.php';

include "libs/Smarty.class.php";

//initialisation
require 'includes/bootstrap.php';

require 'helpers/Database.php';
require 'helpers/Model.php';

include 'model/Article.php';
include 'model/About.php';
// head
$templateParser->assign('myTitle',$myTitle);
$templateParser->assign('footer',$footer);
$templateParser->display('head.tpl');

// header

$templateParser->display('header.tpl');

// menu


$action = isset($_GET['page']) ? $_GET['page'] : 'home';


switch ($action) {
    case 'home':
        $articles = new Article();
        $allArticles = $articles->getAllArticles();
        $templateParser->assign('allArticles', $allArticles);
        $templateParser->display('home.tpl');

        break;
    case 'articles':
        //get articles from the model
        $articles = new Article();
        $allArticles = $articles->getAllArticles();
        $templateParser->assign('allArticles', $allArticles);

        $templateParser->display('views/articles.tpl');
        //rewrite to smarty template


        break;
    case 'about':
        //use 'display' to show a template
        $abouts = new About();
        $allAbouts = $abouts->getAllAbouts();
        $templateParser->assign('allAbouts', $allAbouts);
        $templateParser->display('about.tpl');
        break;
    case 'contact':
        //contact
        $templateParser->display('contact.tpl');

        break;
}

// footer
$templateParser->display('views/footer.tpl');

?>