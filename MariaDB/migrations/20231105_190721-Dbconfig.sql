DROP DATABASE IF EXISTS firebnb;
CREATE DATABASE firebnb;
DROP USER IF EXISTS 'firebnb'@'%';
CREATE USER 'firebnb'@'%' IDENTIFIED BY '123456';
GRANT ALL PRIVILEGES ON `firebnb`.* TO firebnb;
FLUSH PRIVILEGES;