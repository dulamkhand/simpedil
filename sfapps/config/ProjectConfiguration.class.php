<?php

//require_once 'c://wamp//www//symfony14//lib/autoload/sfCoreAutoload.class.php';
require_once '/home/a5625689/public_html/symfony14/lib/autoload/sfCoreAutoload.class.php';
sfCoreAutoload::register();

class ProjectConfiguration extends sfProjectConfiguration
{
  public function setup()
  {
      $this->enablePlugins('sfDoctrinePlugin', 'sfThumbnailPlugin');
      #sfConfig::set('sf_web_dir', 'C:\wamp\www\simpedil\web');
      #sfConfig::set('sf_upload_dir', 'C:\wamp\www\simpedil\web\u');
      #sfConfig::set('rich_text_fck_js_dir', 'C:\wamp\www\simpedil\web\js');
      
      sfConfig::set('sf_web_dir', '/home/a5625689/public_html/simpedil');
      sfConfig::set('sf_upload_dir', '/home/a5625689/public_html/simpedil/u');
      sfConfig::set('rich_text_fck_js_dir', '/home/a5625689/public_html/simpedil/js');
  }

}
