CREATE TABLE Clientes(
	
	Cedula int primary key NOT NULL,
    
	NombreCliente text NOT NULL,
    
	Email text NOT NULL,
    
	Telefono int NOT NULL

);



CREATE TABLE Usuarios (
	
	IdUsuario int primary key NOT NULL,

    	Usuario text NOT NULL,
    
	Contrasena text NOT NULL

);



CREATE TABLE Programas (

	IdPrograma int primary key NOT NULL,

 	NombrePrograma text NOT NULL,

    	Precio real NOT NULL

);



CREATE TABLE Viajes (

		Cedula int REFERENCES Clientes (Cedula),

    	IdPrograma int REFERENCES Programas (IdPrograma),

    	Fecha text NOT NULL,

    	CantidadPersonas int NOT NULL
);



CREATE TABLE Recordatorios (

	   IdRecordatorios int primary key NOT NULL,

    	FechaRecordatorios text NOT NULL,

    	Hora text NOT NULL,

    	Descripcion text

);



CREATE TABLE CrearRecordatorio (

		IdUsuario int REFERENCES Usuarios(IdUsuario),

    	IdRecordatorios int REFERENCES Recordatorios(IdRecordatorios)

);