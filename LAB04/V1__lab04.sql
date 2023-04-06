/* Zadanie 1 */
CREATE DATABASE taxidb;
l /*Wyswietlenie baz*/
\c taxidb; /*Polaczenie z baza*/ 
 
/* Zadanie 2 */
CREATE SCHEMA data;
CREATE TABLE data.Passenger (
id serial PRIMARY KEY,
User_id INT UNIQUE NOT NULL,
PreferPayment int
);
 
CREATE TABLE data.PassengerRate (
    id serial PRIMARY KEY,
    Behavior INT NOT NULL,
    OnTime INT NOT NULL,
    Passenger_id INT NOT NULL,
    Trip_id INT UNIQUE NOT NULL
);
 
CREATE TABLE data.DriverRate (
    id serial PRIMARY KEY,
    CarCondition INT NOT NULL,
    KeepingRegulations INT NOT NULL,
    Driver_id INT NOT NULL,
    Trip_id INT UNIQUE NOT NULL
);
 
CREATE TABLE data.Driver (
    id serial PRIMARY KEY,
    Photo bytea,
    User_id INT UNIQUE NOT NULL
);
 
CREATE TABLE data.DriverCar (
    id serial PRIMARY KEY,
    Registration VARCHAR(25),
    Color VARCHAR(25),
    Car_id INT NOT NULL,
    Driver_id INT NOT NULL
);
 
CREATE TABLE data.Car (
    id serial PRIMARY KEY,
    Brand VARCHAR(100),
    Model VARCHAR(100),
    CarType_id INT NOT NULL
);
 
CREATE TABLE data.User (
    id serial PRIMARY KEY,
    Name VARCHAR(100),
    Surname VARCHAR(100),
    Email VARCHAR(100),
    Phone VARCHAR(100)
);
 
CREATE TABLE data.CarType (
    id serial PRIMARY KEY,
    Name VARCHAR(50) NOT NULL
);
 
CREATE TABLE data.Trip (
    id serial PRIMARY KEY,
    Distance DECIMAL NOT NULL,
    Driver_id INT NOT NULL,
    Passenger_id INT NOT NULL,
    Payment_id INT UNIQUE NOT NULL,
    DriverCar_id INT NOT NULL,
    Address_Pickup INT NOT NULL,
    Address_Destination INT NOT NULL
);
 
CREATE TABLE data.PaymentType (
    id serial PRIMARY KEY,
    Name VARCHAR(50) NOT NULL
);
 
CREATE TABLE data.Payment (
    id SERIAL NOT NULL,
    Amount money NOT NULL,
    PaymentType_id INT NOT NULL
);
 
CREATE TABLE data.Address (
    id SERIAL PRIMARY KEY,
    Street VARCHAR(100) NOT NULL,
    Building VARCHAR(25),
    Apartament VARCHAR(25),
    Post_Code VARCHAR(25) NOT NULL,
    City VARCHAR(25) NOT NULL,
    Country VARCHAR(25) NOT NULL,
    Area_id INT UNIQUE NOT NULL
);
 
CREATE TABLE data.Area (
    id SERIAL PRIMARY KEY,
    Name VARCHAR(255) NOT NULL
);
 
/*Zadanie 3*/
 
/*user*/
INSERT INTO 
  data.User (Name,Surname,Email,Phone)
VALUES
  ('Jacek', 'Placek', 'wuj@wp.pl', '234123234'),
  ('Marek', 'Gacek', 'luj@wp.pl', '234123234'),
  ('Max', 'Nikt', 'ciur@o2.pl', '234123234'),
  ('Jacus', 'Czarny', 'knur@gmail.com', '234123234'),
  ('Maciej', 'Kante','wor@wp.pl','234123234');
 
/*area*/
INSERT INTO
    data.Area(Name)
VALUES
    ('Zgierz'),('Kosta'),('Gdansk'),('Elblag'),('Sosnowiec');
 
/*Address*/
INSERT INTO
    data.Address(Street,Building,Apartament,Post_Code,City,Country)
VALUES
    ('Kar','3','B7','83-300','Ken','Pl'),
    ('Kart','6','B6','83-301','Kae','Dl'),
    ('Kartu','5','B5','83-302','Kee','El'),
    ('Kartus','7','B4','83-303','Kwe','Fl'),
    ('Kartusk','8','B3','83-304','Kse','Gl'),
/*Payment*/
INSERT INTO
    data.Payment(Amount)
VALUES
    ('20'),('21'),('22'),('23'),('24');
/*PaymentType*/
INSERT INTO
    data.PaymentType(Name)
VALUES
    ('Karta'),('Gotowka'),('Gotowka'),('Blik'),('BTC');

/*Trip*/
INSERT INTO
    data.Trip(Distance)
VALUES
    ('5'),('12'),('2'),('31'),('3');
/*Type of car*/
INSERT INTO
    data.CarType(Name)
VALUES
    ('Coupe'),('Sedan'),('Kombii'),('Suv'),('Limuzyna');
/*car*/
INSERT INTO
    data.car(Brand,Color)
VALUES
    ('BMW','VantaBlack'),('Mercedes','Red'),('Opel','Silver'),('Audii','Blue'),('BMW','Purple');

/*Driver Reg and clr*/
INSERT INTO
    data.DriverCar(Registration,Color)
VALUES  
    ('GKA','Red'),('GDA','Silver'),('GWE','Purple'),('GD','VantaBlack'),('GBY','Blue');
/*Rate Of Driver*/
INSERT INTO
    data.DriverRate(CarCondition,KeepingRegulations)
VALUES
    ('3','2'),('2','1'),('4','3'),('4','5'),('5','5');
/*Passeger Rate*/
INSERT INTO
    data.PassengerRate(Behavior,OnTime)
VALUES
    ('5','5'),('2','1'),('1','3'),('4','2'),('3','2');
/*Passenger*/
INSERT INTO
    data.Passeger(PreferPayment)
VALUES
    ('1'),(2),(3),(4),(5);


    /*Zadanie 4 */

SELECT * FROM user;
SELECT * FROM Passeger;
SELECT * FROM PassengerRate;
SELECT * FROM DriverCar;
SELECT * FROM   car;
SELECT * FROM
SELECT * FROM
SELECT * FROM
SELECT * FROM
SELECT * FROM
SELECT * FROM
SELECT * FROM
SELECT * FROM

