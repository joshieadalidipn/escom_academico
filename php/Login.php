<?php
$servername="localhost";
$username="Josafat";
$password="2022630750";
$dbname="ProyectoWeb";
$port=6305;
//Creamos la conexion a la base de datos
$conn=new mysqli($servername,$username,$password,$dbname,$port);
//verificamos la conexion
if($conn->connect_error){
    die("Conexion fallida: ".$conn->connect_error);
}
//obtenemos los datos del formulario
$correo=$_POST['correo'];
$contrasena=$_POST['contrasena'];
//Verificamos las credenciales en la base de datos
$sql="SELECT * FROM Profesores WHERE Correo='$correo' AND Contrasena='$contrasena'";
$result=$conn->query($sql);
if($result->num_rows==1){
    header("Location: ../html/Profesor.html");
    exit();
}
else{
    echo "<script>alert('The email or password is incorrect.');</script>";
}
?>