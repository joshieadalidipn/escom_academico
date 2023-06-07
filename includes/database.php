<?php
$servername = "localhost";
$username = "root";  //Tu nombre de usuario de MySQL
$password = "";  //Tu contraseña de MySQL

// Crear conexión
$conn = new mysqli($servername, $username, $password);

// Verificar conexión
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
echo "Connected successfully";
?>
