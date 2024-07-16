----- CREACIÓN DE BASE DE DATOS PARA UNA REMISERIA

DROP DATABASE IF EXISTS proyecto_remiseria;
CREATE DATABASE proyecto_remiseria;
USE proyecto_remiseria;

CREATE TABLE Clientes (
    ID_Cliente INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(50),
    Apellido VARCHAR(50),
    Teléfono VARCHAR(15) NOT NULL,
    Email VARCHAR(50)
);

CREATE TABLE Conductores (
    ID_Conductor INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(50),
    Apellido VARCHAR(50),
    Teléfono VARCHAR(15) NOT NULL,
    Email VARCHAR(50)
);

CREATE TABLE Tarifas (
    ID_Tarifa INT PRIMARY KEY AUTO_INCREMENT,
    Descripción VARCHAR(100),
    Precio_Kilometro DECIMAL(10, 2)
);

CREATE TABLE Zonas (
    ID_Zona INT PRIMARY KEY AUTO_INCREMENT,
    Nombre_Zona VARCHAR(50),
    Tarifa_Base DECIMAL(10, 2),
    ID_Tarifa INT,
    FOREIGN KEY (ID_Tarifa) REFERENCES Tarifas(ID_Tarifa)
);

CREATE TABLE Autos (
    ID_Auto INT PRIMARY KEY AUTO_INCREMENT,
    Matrícula VARCHAR(10),
    Marca VARCHAR(30),
    Modelo VARCHAR(30),
    ID_Conductor INT,
    FOREIGN KEY (ID_Conductor) REFERENCES Conductores(ID_Conductor)
);

CREATE TABLE Reservas (
    ID_Reserva INT PRIMARY KEY AUTO_INCREMENT,
    ID_Cliente INT,
    ID_Auto INT,
    ID_Zona INT,
    ID_Tarifa INT,
    Fecha_Hora DATETIME,
    Origen VARCHAR(100),
    Destino VARCHAR(100),
    FOREIGN KEY (ID_Cliente) REFERENCES Clientes(ID_Cliente),
    FOREIGN KEY (ID_Auto) REFERENCES Autos(ID_Auto),
    FOREIGN KEY (ID_Zona) REFERENCES Zonas(ID_Zona),
    FOREIGN KEY (ID_Tarifa) REFERENCES Tarifas(ID_Tarifa)
);

CREATE TABLE Viajes (
    ID_Viaje INT PRIMARY KEY AUTO_INCREMENT,
    ID_Reserva INT,
    Fecha_Hora_Inicio DATETIME,
    Fecha_Hora_Fin DATETIME,
    Kilometraje DECIMAL(10, 2),
    FOREIGN KEY (ID_Reserva) REFERENCES Reservas(ID_Reserva)
);

CREATE TABLE Pagos (
    ID_Pago INT PRIMARY KEY AUTO_INCREMENT,
    ID_Reserva INT,
    Fecha_Pago DATETIME,
    Monto DECIMAL(10, 2),
    Método_Pago VARCHAR(20),
    FOREIGN KEY (ID_Reserva) REFERENCES Reservas(ID_Reserva)
);
