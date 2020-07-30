-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- Servidor: localhost
-- Tiempo de generación: 09-06-2020 a las 12:12:22
-- Versión del servidor: 5.0.51
-- Versión de PHP: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Base de datos: `enajonahernandez`
-- 

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `autentificacion`
-- 

CREATE TABLE `autentificacion` (
  `cuenta` varchar(25) NOT NULL,
  `contraseña` varchar(8) NOT NULL,
  PRIMARY KEY  (`cuenta`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `autentificacion`
-- 

INSERT INTO `autentificacion` VALUES ('Jhernandez', 'jo123');
INSERT INTO `autentificacion` VALUES ('Hernandez', 'hn123');
INSERT INTO `autentificacion` VALUES ('Joher', 'jh123');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `requerimientos`
-- 

CREATE TABLE `requerimientos` (
  `id` int(11) NOT NULL auto_increment,
  `gerencia` varchar(20) NOT NULL,
  `depto` varchar(20) NOT NULL,
  `asignar` varchar(20) NOT NULL,
  `encargado` varchar(20) NOT NULL,
  `requerimiento` varchar(100) NOT NULL,
  `Cerrado` tinyint(1) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

-- 
-- Volcar la base de datos para la tabla `requerimientos`
-- 

INSERT INTO `requerimientos` VALUES (1, 'Abastecimiento', 'TI', 'Tecnico', 'Pedrita', 'Fallo del sistema computacional', 0);
INSERT INTO `requerimientos` VALUES (2, 'Abastecimiento', 'Abastecimiento', 'Ingeniero', 'Pedrito', 'Faltan insumos tangibles', 0);
INSERT INTO `requerimientos` VALUES (3, 'TI', 'TI', 'Ingeniero', 'Pedrita', 'Recuperación de datos en espera', 0);
INSERT INTO `requerimientos` VALUES (4, 'TI', 'TI', 'Ingeniero', 'Pedrita', 'Extraccion de datos suspendida', 0);
INSERT INTO `requerimientos` VALUES (5, 'Abastecimiento', 'Abastecimiento', 'Tecnico', 'Pedrito', 'Prueba de sistemas de abastecimiento', 0);
INSERT INTO `requerimientos` VALUES (6, 'TI', 'TI', 'Ingeniero', 'Pedrito', 'Este es un requerimiento de prueba', 0);
INSERT INTO `requerimientos` VALUES (7, 'Abastecimiento', 'Abastecimiento', 'Ingeniero', 'Pedrito', 'Instalacion de servicios en linea', 0);
INSERT INTO `requerimientos` VALUES (8, 'Abastecimiento', 'Abastecimiento', 'Tecnico', 'Pedrito', 'Ingreso de conexiones digitales', 0);
INSERT INTO `requerimientos` VALUES (9, 'TI', 'TI', 'Ingeniero', 'Pedrito', 'Solicitud de aprobacion de sistemas informaticos', 0);
