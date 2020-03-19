<?php

class ViewUser extends User {
    public function showAllUsers(){
        $datas = $this->getAllUsers();
        foreach ($datas as $data){
            echo $data['ID']."<br>";
            echo $data['userName']."<br>";
            echo $data['firstName']."<br>";
            echo $data['lastName']."<br>";
            echo $data['email']."<br>";
            echo $data['rank']."<br>";
        }

    }
}