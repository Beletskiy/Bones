<?php

namespace app\controllers;

use yii\web\Controller;
use yii\data\Pagination;
use app\models\Experiment;
use yii\filters\AccessControl;
use yii\filters\VerbFilter;

class ExperimentController extends Controller
{
 public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::className(),
                'rules' => [
                    [
                        'allow' => true,
                        'roles' => ['@'],
                    ],
                ],
            ],
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'logout' => ['post'],
                ],
            ],
        ];
    } 
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
