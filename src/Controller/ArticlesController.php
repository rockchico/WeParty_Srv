<?php
// src/Controller/ArticlesController.php

namespace App\Controller;

class ArticlesController extends AppController {

    public function initialize() {
        parent::initialize();
        $this->loadComponent('RequestHandler');
        $this->loadComponent('Flash'); // Include the FlashComponent
    }

    public function index() {
        $articles = $this->Articles->find('all');
        $this->set(compact('articles'));
    }

    public function indexjson() {

        // Set the layout.
        $this->viewBuilder()->layout('ajax');

        if ($this->request->is('post')) {
            $articles = $this->Articles->find('all');
            $this->log(compact('articles'), "debug");
            $this->set(compact('articles'));
        }



    }

    public function sendjson() {


        // Set the layout.
        $this->viewBuilder()->layout('ajax');

        $send = array("a" => "valor de A", "b" => "valor de B", "c" => array(5,4,32,67));
        $this->set(compact('send'));

    }

    public function receivejson() {

        // Set the layout.
        $this->viewBuilder()->layout('ajax');

        $data = null;
        if ($this->request->is('post')) {
            $data = $this->request->input('json_decode');
            $data->sucesso = "ok";
            $data->a = array("um", "dois", "tres");


            // Executing this inside a class using LogTrait
            $this->log(print_r($data, true), "debug");
        }



        $this->set(compact('data'));


    }






    public function view($id = null) {
        $article = $this->Articles->get($id);
        $this->set(compact('article'));
    }

    public function add() {
        $article = $this->Articles->newEntity();
        if ($this->request->is('post')) {
            $article = $this->Articles->patchEntity($article, $this->request->data);
            if ($this->Articles->save($article)) {
                $this->Flash->success(__('Your article has been saved.'));
                return $this->redirect(['action' => 'index']);
            }
            $this->Flash->error(__('Unable to add your article.'));
        }
        $this->set('article', $article);
    }

    // src/Controller/ArticlesController.php

    public function edit($id = null) {
        $article = $this->Articles->get($id);
        if ($this->request->is(['post', 'put'])) {
            $this->Articles->patchEntity($article, $this->request->data);
            if ($this->Articles->save($article)) {
                $this->Flash->success(__('Your article has been updated.'));
                return $this->redirect(['action' => 'index']);
            }
            $this->Flash->error(__('Unable to update your article.'));
        }

        $this->set('article', $article);
    }


    public function delete($id) {
        $this->request->allowMethod(['post', 'delete']);

        $article = $this->Articles->get($id);
        if ($this->Articles->delete($article)) {
            $this->Flash->success(__('The article with id: {0} has been deleted.', h($id)));
            return $this->redirect(['action' => 'index']);
        }
    }


}
?>
