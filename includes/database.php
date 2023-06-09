<?php

class Database
{
    public $conn;
    private $servername = "localhost";
    private $username = "root";
    private $password = "";
    private $dbname = "escom_academico";

    public function __construct()
    {
        try {
            $this->conn = new PDO("mysql:host=$this->servername;dbname=$this->dbname", $this->username, $this->password);
            // Establecer el modo de error de PDO a excepción
            $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            echo "Connected successfully";
        } catch (PDOException $e) {
            echo "Connection failed: " . $e->getMessage();
        }
    }

    // Función para obtener la conexión
    public function getConnection()
    {
        return $this->conn;
    }
}
