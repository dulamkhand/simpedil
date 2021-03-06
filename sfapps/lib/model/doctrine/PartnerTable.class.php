<?php

/**
 * PartnerTable
 * 
 * This class has been auto-generated by the Doctrine ORM Framework
 */
class PartnerTable extends Doctrine_Table
{
    /**
     * Returns an instance of this class.
     *
     * @return object PartnerTable
     */
    public static function getInstance()
    {
        return Doctrine_Core::getTable('Partner');
    }
    
    
    
    public function fetchall($params = array())
    {
        $q = Doctrine_Query::create()
            ->select('*')
            ->from('Partner')
            ->orderBy('created_at DESC');
  
            // KEYWORD
            if(isset($params['keyword']) && $params['keyword'])
              $q->andWhere('title LIKE ? OR address LIKE ? OR phone LIKE ?', array('%'.$params['keyword'].'%', '%'.$params['keyword'].'%', '%'.$params['keyword'].'%'));
  
            // LIMIT
            $limit = isset($params['limit']) ? $params['limit'] : 100;
            $q->limit($limit);
    
        return $q->execute();
    }
  
  
    
    public function getPager($params = array(), $page=1)
    {
        $q = Doctrine_Query::create()
            ->select('*')
            ->from('Partner')
            ->orderBy('created_at DESC');
  
            // KEYWORD
            if(isset($params['keyword']) && $params['keyword'])
              $q->andWhere('title LIKE ? OR address LIKE ? OR phone LIKE ?', array('%'.$params['keyword'].'%', '%'.$params['keyword'].'%', '%'.$params['keyword'].'%'));
  
            // LIMIT
            $limit = isset($params['limit']) ? $params['limit'] : 100;
            $q->limit($limit);
                
        $pager = new sfDoctrinePager('Partner', sfConfig::get('app_pager', 30));
        $pager->setPage($page);
        $pager->setQuery($q);
        $pager->init();
        
        return $pager;
    }
}