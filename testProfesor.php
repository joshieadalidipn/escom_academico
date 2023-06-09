<?php
include_once './models/profesor.php';

// Crear un nuevo objeto Profesor
$profesor = new Profesor();

// Probar la función addProfesor
$profesor->addProfesor("John Doe", "john@example.com", "Computación");

// Probar la función getProfesorById
// Asume que el profesor que acabamos de añadir tiene el id 1
// Esto solo será correcto si este es el primer profesor que se añade a la base de datos
$profesor_info = $profesor->getProfesorById(1);

// Imprimir la información del profesor
print_r($profesor_info);
echo($profesor_info);