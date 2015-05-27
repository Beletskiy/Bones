<?php

namespace app\models;

use Yii;
//use yii\base\NotSupportedException;
use yii\db\ActiveRecord;
//use yii\helpers\Security;
use yii\web\IdentityInterface;

/**
 * This is the model class for table "users".
 *
 * @property string $name
 * @property string $password
 *
 * @property Experiment[] $experiments
 */
class User extends ActiveRecord implements IdentityInterface
{
     public $username;
     
   public static function findIdentity($id)
    {
        return static::findOne($id);
    }
    
    public static function findIdentityByAccessToken($token, $type = null)
    {
          return static::findOne(['access_token' => $token]);
    } 
    
    public static function findByUsername($username)
    {
       return static::findOne(['name' => $username]);
    } 
    
    public function getId()
    {
        return $this->id;
    }
    
    public function getAuthKey()
    {
        return $this->auth_key;
    }
    
    public function validateAuthKey($authKey)
    {
        return $this->getAuthKey() === $authKey;
    }
    
    public function validatePassword($password)
    {
        return \Yii::$app->getSecurity()->validatePassword($password,$this->password);
    } 
    
    /**
     * Generates password hash from password and sets it to the model
     *
     * @param string $password
     */
    public function setPassword($password)
    {
        $this->password = Yii::$app->getSecurity()->generatePasswordHash($password);
    } 
 
    /**
     * Generates "remember me" authentication key
     */
    public function generateAuthKey()
    {
        $this->auth_key = Yii::$app->getSecurity()->generateRandomString($length = 16);
    } 
    
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'user';
    }
    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'name' => 'Name',
            'password' => 'Password',
            'auth_key' => 'Auth Key',
            'accessToken' => 'Access Token',
            'email' => 'Email',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getExperiments()
    {
        return $this->hasMany(Experiment::className(), ['name' => 'name']);
    }
}
