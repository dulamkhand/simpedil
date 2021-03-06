<?php
// Connection Component Binding
Doctrine_Manager::getInstance()->bindComponent('ProductModel', 'doctrine');

/**
 * BaseProductModel
 * 
 * This class has been auto-generated by the Doctrine ORM Framework
 * 
 * @property integer $id
 * @property integer $product_id
 * @property string $name
 * @property string $name_en
 * @property integer $sort
 * @property timestamp $created_at
 * @property timestamp $updated_at
 * @property Product $Product
 * 
 * @method integer      getId()         Returns the current record's "id" value
 * @method integer      getProductId()  Returns the current record's "product_id" value
 * @method string       getName()       Returns the current record's "name" value
 * @method string       getNameEn()     Returns the current record's "name_en" value
 * @method integer      getSort()       Returns the current record's "sort" value
 * @method timestamp    getCreatedAt()  Returns the current record's "created_at" value
 * @method timestamp    getUpdatedAt()  Returns the current record's "updated_at" value
 * @method Product      getProduct()    Returns the current record's "Product" value
 * @method ProductModel setId()         Sets the current record's "id" value
 * @method ProductModel setProductId()  Sets the current record's "product_id" value
 * @method ProductModel setName()       Sets the current record's "name" value
 * @method ProductModel setNameEn()     Sets the current record's "name_en" value
 * @method ProductModel setSort()       Sets the current record's "sort" value
 * @method ProductModel setCreatedAt()  Sets the current record's "created_at" value
 * @method ProductModel setUpdatedAt()  Sets the current record's "updated_at" value
 * @method ProductModel setProduct()    Sets the current record's "Product" value
 * 
 * @package    vogue
 * @subpackage model
 * @author     Your name here
 * @version    SVN: $Id: Builder.php 7490 2010-03-29 19:53:27Z jwage $
 */
abstract class BaseProductModel extends sfDoctrineRecord
{
    public function setTableDefinition()
    {
        $this->setTableName('product_model');
        $this->hasColumn('id', 'integer', 4, array(
             'type' => 'integer',
             'fixed' => 0,
             'unsigned' => false,
             'primary' => true,
             'autoincrement' => true,
             'length' => 4,
             ));
        $this->hasColumn('product_id', 'integer', 4, array(
             'type' => 'integer',
             'fixed' => 0,
             'unsigned' => false,
             'primary' => false,
             'notnull' => true,
             'autoincrement' => false,
             'length' => 4,
             ));
        $this->hasColumn('name', 'string', 100, array(
             'type' => 'string',
             'fixed' => 0,
             'unsigned' => false,
             'primary' => false,
             'notnull' => true,
             'autoincrement' => false,
             'length' => 100,
             ));
        $this->hasColumn('name_en', 'string', 100, array(
             'type' => 'string',
             'fixed' => 0,
             'unsigned' => false,
             'primary' => false,
             'notnull' => true,
             'autoincrement' => false,
             'length' => 100,
             ));
        $this->hasColumn('sort', 'integer', 4, array(
             'type' => 'integer',
             'fixed' => 0,
             'unsigned' => false,
             'primary' => false,
             'notnull' => true,
             'autoincrement' => false,
             'length' => 4,
             ));
        $this->hasColumn('created_at', 'timestamp', 25, array(
             'type' => 'timestamp',
             'fixed' => 0,
             'unsigned' => false,
             'primary' => false,
             'notnull' => true,
             'autoincrement' => false,
             'length' => 25,
             ));
        $this->hasColumn('updated_at', 'timestamp', 25, array(
             'type' => 'timestamp',
             'fixed' => 0,
             'unsigned' => false,
             'primary' => false,
             'default' => '0000-00-00 00:00:00',
             'notnull' => true,
             'autoincrement' => false,
             'length' => 25,
             ));
    }

    public function setUp()
    {
        parent::setUp();
        $this->hasOne('Product', array(
             'local' => 'product_id',
             'foreign' => 'id'));
    }
}