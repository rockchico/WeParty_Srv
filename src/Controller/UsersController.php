<?php
// src/Controller/ArticlesController.php

namespace App\Controller;

class UsersController extends AppController {

    public function initialize() {
        parent::initialize();
        $this->loadComponent('RequestHandler');
        $this->loadComponent('Flash'); // Include the FlashComponent
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
