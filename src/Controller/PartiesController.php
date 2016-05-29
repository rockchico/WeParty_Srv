<?php
// src/Controller/ArticlesController.php

namespace App\Controller;

class PartiesController extends AppController {

    public function initialize() {
        parent::initialize();
        $this->loadComponent('RequestHandler');
        $this->loadComponent('Flash'); // Include the FlashComponent
    }



    public function create() {

        $jsonPost = null;
        $jsonResponse = (object) array();

        $party = $this->Parties->newEntity();

        if ($this->request->is('post')) {

            $jsonPost = $this->request->input('json_decode');
            $this->log($jsonPost, "debug");

            if($jsonPost) {
                $party->name = $jsonPost->partyName;
                $party->location = $jsonPost->partyLocation;
                $party->user_id = $jsonPost->partyUserId;

                if ($result = $this->Parties->save($party)) {
                    $jsonResponse->success = "yes";
                    $jsonResponse->lastInsertId = $result->id;
                } else {
                    $jsonResponse->success = "no";
                }

            }

        }
        $this->set('jsonResponse', $jsonResponse);
    }

    public function savesongs() {

        $jsonPost = null;
        $jsonResponse = (object) array();

        $party = $this->Parties->newEntity();

        if ($this->request->is('post')) {

            $jsonPost = $this->request->input('json_decode');
            $this->log($jsonPost, "debug");

            

        }
        $this->set('jsonResponse', $jsonResponse);
    }




}
?>
