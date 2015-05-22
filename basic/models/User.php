<?php

namespace app\models;

use Yii;
use yii\base\NotSupportedException;
use yii\db\ActiveRecord;
use yii\helpers\Security;
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
        return trim($this->password) === ($password); //sha1
    } 
    
    /**
     * Generates password hash from password and sets it to the model
     *
     * @param string $password
     */
    public function setPassword($password)
    {
        $this->password_hash = Security::generatePasswordHash($password);
    } 
 
    /**
     * Generates "remember me" authentication key
     */
    public function generateAuthKey()
    {
        $this->auth_key = Security::generateRandomKey();
    } 
    /**
     * Generates new password reset token
     */
  /*  public function generatePasswordResetToken()
    {
        $this->password_reset_token = Security::generateRandomKey() . '_' . time();
    } */
    /**
     * Removes password reset token
     */
  /*  public function removePasswordResetToken()
    {
        $this->password_reset_token = null;
    } */

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
    public function rules()
    {
        return [
            [['name', 'password'], 'required'],
            [['name', 'password'], 'string', 'max' => 30]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'name' => 'Name',
            'password' => 'Password',
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
