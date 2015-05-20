<?php
use yii\helpers\Html;
use yii\widgets\LinkPager;
?>
<h1>Experiments</h1>
<ul>
<?php foreach ($experiments as $experiment): ?>
    <li>
        Эксперимент №<?= Html::encode("{$experiment->id_exp}") ?> 
        Провёл <?= Html::encode("{$experiment->name}") ?>
		    <?= Html::encode("{$experiment->date}") ?>
        в <?= Html::encode("{$experiment->time}") ?>
    </li>
<?php endforeach; ?>
</ul>

<?= LinkPager::widget(['pagination' => $pagination]) ?> 