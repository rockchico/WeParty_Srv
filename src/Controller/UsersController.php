<?php
// src/Controller/ArticlesController.php

namespace App\Controller;

class UsersController extends AppController {

    public function initialize() {
        parent::initialize();
        $this->loadComponent('RequestHandler');
        $this->loadComponent('Flash'); // Include the FlashComponent
    }

    public function login() {

        $jsonPost = null;
        $jsonResponse = (object) array();

        if ($this->request->is('post')) {

            $jsonPost = $this->request->input('json_decode');
            //$this->log($jsonPost, "debug");

            if($jsonPost) {

                $email = $jsonPost->userEmail;
                $password = md5($jsonPost->userPassword);
                $user = $this->Users->find()->where(['email' => $email, 'password' => md5($password)])->limit(1);
                $result = $user->toArray();



                if ($result) {
                    $this->log($result[0]->name, "debug");
                    $jsonResponse->success = "yes";
                } else {
                    $jsonResponse->success = "no";
                }

            }

        }
        $this->set('jsonResponse', $jsonResponse);
    }

    public function registration() {

        $jsonPost = null;
        $jsonResponse = (object) array();

        $user = $this->Users->newEntity();

        if ($this->request->is('post')) {

            $jsonPost = $this->request->input('json_decode');
            $this->log($jsonPost, "debug");

            if($jsonPost) {
                $user->name = $jsonPost->userName;
                $user->email = $jsonPost->userEmail;
                $user->password = md5($jsonPost->userPassword);

                if ($result = $this->Users->save($user)) {
                    $jsonResponse->success = "yes";
                    $jsonResponse->lastInsertId = $result->id;
                } else {
                    $jsonResponse->success = "no";
                }

            }

        }
        $this->set('jsonResponse', $jsonResponse);
    }



}
?>
