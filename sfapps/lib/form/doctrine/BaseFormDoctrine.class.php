<?php

/**
 * Project form base class.
 *
 * @package    vogue
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormBaseTemplate.php 23810 2009-11-12 11:07:44Z Kris.Wallsmith $
 */
abstract class BaseFormDoctrine extends sfFormDoctrine
{
  public function setup()
  {
        unset($this['id'],$this['created_at'],$this['updated_at'],$this['nb_love'],$this['route']);
        
        // WIDGET
        $this->widgetSchema['sort']  = new sfWidgetFormInputText(array(), array('style'=>'width:40px;'));
        $this->widgetSchema['is_active'] = new sfWidgetFormInputCheckbox(array(), array('value'=>1));
        $this->widgetSchema['is_featured'] = new sfWidgetFormInputCheckbox(array(), array('value'=>1));

        // VALIDATOR
        $this->validatorSchema['sort']      = new sfValidatorPass();
        $this->validatorSchema['is_active'] = new sfValidatorPass();
        $this->validatorSchema['is_featured'] = new sfValidatorPass();
        
        // HELP
        $this->getWidgetSchema()->getFormFormatter()->setHelpFormat('<span class="help">%help%</span>');  
        $this->widgetSchema->setHelp('sort', 'Тоо оруулна уу. Тухайн тоогоор буурахаар эрэмбэлэгдэж харагдана.');
  }
  
  
  function getFileAttrs($folder, $required=false, $maxsize=5, $mime=array('image/jpeg','image/pjpeg','image/png','image/x-png','image/gif')) {
      return array('required'   => $required,
                   'path'       => sfConfig::get("sf_upload_dir")."/".$folder,
                   'max_size'   => (intval($maxsize)*1024*1024),
                   'mime_types' => $mime);
  }
  
  function getFileOpts($maxsize='5MB', $ext='jpg, png, gif') {
      return array('max_size'   => 'File max size: '.$maxsize,
                   'mime_types' => 'Allowed extentions: '.$ext);
  }

}
