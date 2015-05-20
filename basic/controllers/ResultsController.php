<?php

namespace app\controllers;

use Yii;
use app\models\Results;
use app\models\Experiment;
use yii\web\Controller;

class ResultsController extends Controller
{
    public function actionIndex()
    {
        ResultsController::addResult();
        
        $sql = 'SELECT * FROM `results` WHERE id_exp = (SELECT MAX( `id_exp` )FROM results) ORDER BY num';
        $results = Results::findBySql($sql)->all();
        
        $sql1 = 'SELECT * FROM `experiment` WHERE id_exp = (SELECT MAX( `id_exp` )FROM experiment)';
        $experiment = Experiment::findBySql($sql1)->all();
        
        return $this->render('index', [
            'results' => $results, 
            'experiment' => $experiment,
        ]);
    }
    private static function addResult ()
    {
        $experiment = new Experiment;
        $experiment->date = date("y-m-d");
        $experiment->time = date ("H:i:s");
        $experiment->name= "Auto";
        $experiment->bones_num = 2;
        $experiment->throws=36000;
        $experiment->save(); 
        
        $throws=36000;
        $count=0; $count2=0; $count3=0; $count4=0; $count5=0; $count6=0; $count7=0; 
        $count8=0; $count9=0; $count10=0; $count11=0; $count12=0;
   for($i=0;$i<$throws;$i++){
        $temp1=rand(1,6);
        $temp2=rand(1,6); 
        $count++;
     switch($i){
        case ($temp1+$temp2==2):
              $count2++;
              $arr[2]=$count2;
        break;
        case ($temp1+$temp2==3):
              $count3++;
              $arr[3]=$count3;
        break;
        case ($temp1+$temp2==4):
              $count4++;
              $arr[4]=$count4;
        break;
        case ($temp1+$temp2==5):
              $count5++;
              $arr[5]=$count5;
        break;
        case ($temp1+$temp2==6):
              $count6++;
              $arr[6]=$count6;
        break;
             case ($temp1+$temp2==7):
             $count7++;
             $arr[7]=$count7;
        break;
        case ($temp1+$temp2==8):
             $count8++;
             $arr[8]=$count8;
        break;
        case ($temp1+$temp2==9):
             $count9++;
             $arr[9]=$count9;
        break;
        case ($temp1+$temp2==10):
              $count10++;
              $arr[10]=$count10;
        break;
        case ($temp1+$temp2==11):
             $count11++;
             $arr[11]=$count11;
        break;
        case ($temp1+$temp2==12):
             $count12++;
             $arr[12]=$count12;
        break;
    }
   } 
   foreach($arr as $n => $c) {
        $result = new Results;
        $result->num = $n; 
        $result->count = $c;  // 2 - 12
        $result->id_exp = $experiment->id_exp;
        $result->save();
    }
}
}
