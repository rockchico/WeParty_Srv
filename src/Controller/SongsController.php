<?php
// src/Controller/ArticlesController.php

namespace App\Controller;

class SongsController extends AppController {

    public function initialize() {
        parent::initialize();
        $this->loadComponent('RequestHandler');
        $this->loadComponent('Flash'); // Include the FlashComponent
    }

    public function save() {

        $jsonPost = null;
        $jsonResponse = (object) array();

        if ($this->request->is('post')) {

            $jsonPost = $this->request->input('json_decode');
            $this->log($jsonPost, "debug");

            $partySongs = $jsonPost->partySongs;

            foreach ($partySongs as $key => $value) {

                $song = $this->Songs->newEntity();
                # code...
                $song->name = $value->songName;
                $song->path = $value->songPath;
                $song->uuid = $value->songUuid;
                $song->party_id = $value->songPartyId;


                if ($result = $this->Songs->save($song)) {
                    $jsonResponse->success = "yes";
                    $jsonResponse->info = "Músicas Enviadas.";
                }



            }





        }


        $this->set('jsonResponse', $jsonResponse);
    }

    public function getnext() {

        $jsonPost = null;
        $jsonResponse = (object) array();

        if ($this->request->is('post')) {

            $jsonPost = $this->request->input('json_decode');
            //$this->log($jsonPost, "debug");

            $partyId = $jsonPost->partyId;

            $song = $this->Songs->find()->where(['party_id' => $partyId, 'played' => 0])->limit(1)->order(['likes' => 'DESC']);;
            $result = $song->toArray();

            //$this->log($result, "debug");

            if ($result) {
                //$this->log($result[0]->name, "debug");
                $jsonResponse->success = "yes";

                $jsonResponse->songId = $result[0]->id;
                $jsonResponse->songName = $result[0]->name;
                $jsonResponse->songUuid = $result[0]->uuid;
                $jsonResponse->songPath = $result[0]->path;
                $jsonResponse->songLikes = $result[0]->likes;
                $jsonResponse->songPlayed = $result[0]->played;

            } else {
                $jsonResponse->success = "no";
            }







        }


        $this->set('jsonResponse', $jsonResponse);
    }

    public function setplayed() {

        $jsonPost = null;
        $jsonResponse = (object) array();



        if ($this->request->is('post')) {

            $jsonPost = $this->request->input('json_decode');
            //$this->log($jsonPost, "debug");

            $song = $this->Songs->get($jsonPost->songId);
            $song->played = 1;

            if ($result = $this->Songs->save($song)) {
                $jsonResponse->success = "yes";
            } else {
                $jsonResponse->success = "no";
            }

        }


        $this->set('jsonResponse', $jsonResponse);
    }



}
?>
