<?php

class About extends model{

    public function getAllAbouts()
    {

        $stmt = $this->db->prepare("SELECT * FROM about");

        $stmt->execute();

        $result = $stmt->fetchAll();

        return $result;

    }


}