<?php

namespace app\controllers;

use yii\web\Controller;
use yii\data\Pagination;
use app\models\Experiment;

class ExperimentController extends Controller
{
    public function actionIndex()
    {
        $query = Experiment::find();

        $pagination = new Pagination([
            'defaultPageSize' => 25,
            'totalCount' => $query->count(),
        ]);

        $experiments = $query->orderBy('id_exp')
            ->offset($pagination->offset)
            ->limit($pagination->limit)
            ->all();

        return $this->render('index', [
            'experiments' => $experiments,
            'pagination' => $pagination,
        ]);
    }
}
