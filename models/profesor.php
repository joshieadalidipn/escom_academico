<?php
include_once '../includes/database.php';

class Profesor
{
    private $connection;

    function __construct()
    {
        $db = new Database();
        $this->connection = $db->getConnection();
    }

    // Función para obtener un profesor por su id
    public function getProfesorById($id)
    {
        $stmt = $this->connection->prepare("SELECT * FROM profesor WHERE id_profesor = ?");
        $stmt->execute([$id]);

        return $stmt->fetch(PDO::FETCH_ASSOC);
    }

    // Función para añadir un nuevo profesor
    public function addProfesor($nombre, $correo, $departamento)
    {
        $stmt = $this->connection->prepare("INSERT INTO profesor (nombre, correo, departamento) VALUES (?, ?, ?)");
        $stmt->execute([$nombre, $correo, $departamento]);
    }
}
