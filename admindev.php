<?php

//require_once('/var/www/malchin/config/ProjectConfiguration.class.php');
require_once(dirname(__FILE__).'/sfapps/config/ProjectConfiguration.class.php');

$configuration = ProjectConfiguration::getApplicationConfiguration('admin', 'dev', true);
sfContext::createInstance($configuration)->dispatch();
