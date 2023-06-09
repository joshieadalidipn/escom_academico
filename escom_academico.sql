-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 07, 2023 at 05:58 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `escom_academico`
--

-- --------------------------------------------------------

--
-- Table structure for table `actividades`
--

CREATE TABLE `actividades` (
  `id_actividad` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `actividades_profesor`
--

CREATE TABLE `actividades_profesor` (
  `id_profesor` int(11) NOT NULL,
  `id_actividad` int(11) NOT NULL,
  `semestre` varchar(255) NOT NULL,
  `horas_dedicadas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `administradores`
--

CREATE TABLE `administradores` (
  `id_administrador` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `contrasena` varchar(255) NOT NULL,
  `correo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `encuestas`
--

CREATE TABLE `encuestas` (
  `id_profesor` int(11) NOT NULL,
  `id_materia` int(11) NOT NULL,
  `semestre` varchar(255) NOT NULL,
  `horas_dedicadas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `materias`
--

CREATE TABLE `materias` (
  `id_materia` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `academia` varchar(255) NOT NULL,
  `carrera` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profesores`
--

CREATE TABLE `profesores` (
  `id_profesor` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `contrasena` varchar(255) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `departamento` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actividades`
--
ALTER TABLE actividad
  ADD PRIMARY KEY (`id_actividad`);

--
-- Indexes for table `actividades_profesor`
--
ALTER TABLE actividad_profesor
  ADD PRIMARY KEY (`id_profesor`,`id_actividad`,`semestre`),
  ADD KEY `id_actividad` (`id_actividad`);

--
-- Indexes for table `administradores`
--
ALTER TABLE administrador
  ADD PRIMARY KEY (`id_administrador`),
  ADD UNIQUE KEY `correo` (`correo`);

--
-- Indexes for table `encuestas`
--
ALTER TABLE encuesta
  ADD PRIMARY KEY (`id_profesor`,`id_materia`,`semestre`),
  ADD KEY `id_materia` (`id_materia`);

--
-- Indexes for table `materias`
--
ALTER TABLE materia
  ADD PRIMARY KEY (`id_materia`);

--
-- Indexes for table `profesores`
--
ALTER TABLE profesor
  ADD PRIMARY KEY (id),
  ADD UNIQUE KEY `correo` (`correo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actividades`
--
ALTER TABLE actividad
  MODIFY `id_actividad` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `administradores`
--
ALTER TABLE administrador
  MODIFY `id_administrador` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `materias`
--
ALTER TABLE materia
  MODIFY `id_materia` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profesores`
--
ALTER TABLE profesor
  MODIFY id int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `actividades_profesor`
--
ALTER TABLE actividad_profesor
  ADD CONSTRAINT `actividades_profesor_ibfk_1` FOREIGN KEY (`id_profesor`) REFERENCES profesor (id),
  ADD CONSTRAINT `actividades_profesor_ibfk_2` FOREIGN KEY (`id_actividad`) REFERENCES actividad (`id_actividad`);

--
-- Constraints for table `encuestas`
--
ALTER TABLE encuesta
  ADD CONSTRAINT `encuestas_ibfk_1` FOREIGN KEY (`id_profesor`) REFERENCES profesor (id),
  ADD CONSTRAINT `encuestas_ibfk_2` FOREIGN KEY (`id_materia`) REFERENCES materia (`id_materia`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
