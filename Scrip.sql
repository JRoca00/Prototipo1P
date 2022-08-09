create database parcial;
use parcial;

create table prueba(
id int not null,
decri varchar(30)
);

select * from prueba;


create table usuarios(
id int not null,
Nombre varchar(30),
Contraseña varchar(30)
);

insert into usuarios values (1, "jroca", "12345");



create table clientes(
Nombre varchar(30),
Apellido varchar(30),
Nit int not null primary key,
Direccion varchar(30),
Numero varchar(30)
);


create table productos(
id_producto int not null primary key auto_increment,
Nombre varchar(30),
Detalle varchar(30),
Precio int
);


create table ventas(
id_ventas int not null primary key,
id_producto int not null,
Nit int not null,
Pago varchar(30)
);
ALTER TABLE ventas ADD foreign key(id_producto) references productos(id_producto);
ALTER TABLE ventas ADD foreign key(Nit) references clientes(Nit);



create table cuenta_cobrar(
id_cuentacobrar int not null primary key,
id_ventas int, 
Saldo int);
ALTER TABLE cuenta_cobrar ADD foreign key(id_ventas) references ventas(id_ventas);