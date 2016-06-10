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



}
?>
