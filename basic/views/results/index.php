<?php

use yii\helpers\Html;
/* @var $this yii\web\View */
$this->title = 'Results';
$this->params['breadcrumbs'][] = $this->title;
?>
<h3>Информация об эксперименте</h3>
<?php foreach ($experiment as $exp): ?>
    <?= Html::encode("{$exp->name}") ?> бросал <?= Html::encode("{$exp->bones_num}") ?>
    кости <?= Html::encode("{$exp->throws}") 
    ?> раз   
<?php endforeach; ?> <br><br>
<ul>
<?php foreach ($results as $result): ?>
    
   <li>
        Комбинация <?= Html::encode("{$result->num}") ?> 
        выпала <?= Html::encode("{$result->count}") ?> раз,
        вероятность выпадения - <?= round(Html::encode("{$result->count}")*100/Html::encode("{$exp->throws}"))?>% 
		  
    </li>
<?php endforeach; ?>
</ul>


