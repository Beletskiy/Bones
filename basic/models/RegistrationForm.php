<?php

namespace app\models;

use Yii;
use yii\base\Model;

/**
 * ContactForm is the model behind the contact form.
 */
class RegistrationForm extends Model
{
    public $name;
    public $email;
    public $password;
    public $password_repeat;
    public $verifyCode;

    /**
     * @return array the validation rules.
     */
    public function rules()
    {
        return [
            // name, email, password are required
            [['name', 'email', 'password'], 'required'],
            
            ['name', 'filter', 'filter' => 'trim'],
            ['name', 'unique', 'targetClass' => 'app\models\User', 'message' => 'This username has already been taken.'],
            ['name', 'string', 'min' => 2, 'max' => 255],
            // email has to be a valid email address
            ['email', 'email'],
            ['email', 'filter', 'filter' => 'trim'],
            ['email', 'unique', 'targetClass' => 'app\models\User', 'message' => 'This email address has already been taken.'],
            
            ['password_repeat', 'compare', 'compareAttribute' => 'password'],
            ['password', 'string', 'min' => 6],
            ['password_repeat','safe'], 
            // verifyCode needs to be entered correctly
            ['verifyCode', 'captcha'],
        ];
    }

    /**
     * @return array customized attribute labels
     */
    public function attributeLabels()
    {
        return [
            'verifyCode' => 'Verification Code',
        ];
    }

     public function signup()
    {
        if ($this->validate()) {
            $user = new User();
            $user->name = $this->name;
            $user->email = $this->email;
            $user->setPassword($this->password);
         // Yii::trace('!!!!!!!!pass!!!!!');
            $user->generateAuthKey();
            $user->accessToken= $this->name.'token';
            
            Yii::$app->mailer->compose()
            ->setFrom('Buzik1980@gmail.com')
            ->setTo($user->email)
            ->setSubject('You are registered on the site "xxx.xxx.xxx" ')
            ->setTextBody('Hello, '.$user->name.'!
                         You have successfully registered.
                         Your login: '.$user->name.'. Your password: '.$this->password)        
            ->send();
            
              if ($user->save()) {
                return $user;
            } 
        }
        return null;
    }
}
