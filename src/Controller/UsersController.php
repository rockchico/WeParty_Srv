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
                $user = $this->Users->find()->where(['email' => $email, 'password' => $password])->limit(1);
                $result = $user->toArray();

                //$this->log($result, "debug");

                if ($result) {
                    $this->log($result[0]->name, "debug");
                    $jsonResponse->success = "yes";
                    $jsonResponse->userId = $result[0]->id;
                    $jsonResponse->userName = $result[0]->name;
                    $jsonResponse->userEmail = $result[0]->email;

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

                // verifica se o email informado ja existe no cadastro
                $email = $jsonPost->userEmail;
                $user1 = $this->Users->find()->where(['email' => $email])->limit(1);
                //$this->log($user1, "debug");
                $result = $user1->toArray();

                //$result = array();

                // se obteve resultado significa que o email ja foi cadastrado por outro usuário
                if($result) {
                    $jsonResponse->success = "no";
                    $jsonResponse->info = "Email ja existe no cadastro, informe outro.";
                } else { // caso contrario esta livre pra cadastro


                    $user->name = $jsonPost->userName;
                    $user->email = $jsonPost->userEmail;
                    $user->password = md5($jsonPost->userPassword);

                    if ($result = $this->Users->save($user)) {
                        $jsonResponse->success = "yes";
                        $jsonResponse->lastInsertId = $result->id;
                    } else {
                        $jsonResponse->success = "no";
                        $jsonResponse->info = "Não foi possivel registrar usuario no cadastro.";
                    }
                }





            }

        }

        $this->log($jsonResponse, "debug");
        $this->set('jsonResponse', $jsonResponse);
    }



}
?>
