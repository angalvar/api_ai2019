<?php
class delegate{
 
    // database connection and table name
    private $conn;
    private $table_name = "delegates";
 
    // object properties
    public $id;    
    public $country_name;
    public $name;
    
    // constructor with $db as database connection
    public function __construct($db){
        $this->conn = $db;
    }

    // read delegates
    function read(){
    
       // select all query
       $query = "SELECT
                  d.id, d.name, c.name as country_name, d.name
               FROM
                   " . $this->table_name . " d                   
                   LEFT JOIN
                       countries c
                           ON d.country_id = c.id
                           WHERE d.is_available = 1       
               ORDER BY
                   d.name DESC";
       // prepare query statement
       $stmt = $this->conn->prepare($query);
    
       // execute query
       $stmt->execute();
    
       return $stmt;
   }
}