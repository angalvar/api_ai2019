<?php
class Database{
 
    // specify your own database credentials
    private $host = "mysql.peppam.net";
    //private $db_name = "api_ai2019";
    private $db_name = "ai2019sec";
    //private $username = "root";
    private $username = "ai2019secuser";
    //private $password = "";
    private $password = "ai2019sec!1";
    public $conn;
 
    // get the database connection
    public function getConnection(){
 
        $this->conn = null;
 
        try{
            $this->conn = new PDO("mysql:host=" . $this->host . ";dbname=" . $this->db_name, $this->username, $this->password);
            $this->conn->exec("set names utf8");
        }catch(PDOException $exception){
            echo "Connection error: " . $exception->getMessage();
        }
 
        return $this->conn;
    }
}
?>