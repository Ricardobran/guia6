CREATE DATABASE Prueba 

go

use Prueba
go

/* Creando tablas */

Create table Producto(
id_producto int primary key,
descripcion_producto varchar(150) not null,
categoria varchar(150) not null,
cod_seccion char(5)not null,
descripcion_seccion varchar (150)not null,
peso varchar (200)not null,
volumen varchar (200) not null,
);

Create table Lugar_compra(
id_lugar_compra int primary key,
region varchar(150) not null,
provincia varchar(150) not null,
comuna varchar(150) not null,
ciudad varchar (150) not null
);

Create table Sector_venta(
id_sector_venta int primary key,
canal1 varchar(150) not null,
canal2 varchar(150) not null,
cod_zona char(5) not null,
zona varchar (150) not null
);

Create table Vendedor(
id_vendedor int primary key,
cod_vendedor char(5) not null,
cod_persona char(5) not null,
vendedor varchar(150) not null,
jefe varchar(150) not null,
subgerente varchar(150) not null,
);

Create table Fecha(
id_fecha int primary key,
fecha date not null
);


Create table Venta(
id_venta int primary key,
id_producto int not null,
id_lugar_compra int not null,
id_sector_venta int not null,
id_vendedor int not null,
id_fecha int not null,
CONSTRAINT fk_producto FOREIGN KEY (id_producto) REFERENCES Producto (id_producto),
CONSTRAINT fk_lugar_compra FOREIGN KEY (id_lugar_compra) REFERENCES Lugar_compra (id_lugar_compra),
CONSTRAINT fk_sector_venta  FOREIGN KEY (id_sector_venta ) REFERENCES Sector_venta  (id_sector_venta ),
CONSTRAINT fk_vendedor FOREIGN KEY (id_vendedor) REFERENCES Vendedor (id_vendedor),
CONSTRAINT fk_fecha FOREIGN KEY (id_fecha) REFERENCES Fecha (id_fecha)
);

insert into Producto values(1,'COCA-COLA','BEBIDA','CC101','CODIGO DEL PRODUCTO','10Kg','2cm³')insert into Lugar_compra values(1,'AMERICA CENTRAL','EL SALVADOR','ALCALDIA DE SAN SALVADOR','SAN SALVADOR')insert into Sector_venta values(1,'CANAL10','CANAL2','1101','SAN SALVADOR')insert into Vendedor values(1,'CB101','VC101','RICARDO','BRYAN','STEVEN')insert into Fecha values(1, '4-11-2021')SELECT *FROM Venta