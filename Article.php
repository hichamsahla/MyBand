<?php

class Article extends model{

    public function getAllArticles()
    {

        $stmt = $this->db->prepare("SELECT * FROM articles");

        $stmt->execute();

        $result = $stmt->fetchAll();

        return $result;

    }


}