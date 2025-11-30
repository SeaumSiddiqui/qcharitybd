-- ./mysql/init.sql
-- Create Keycloak DB + user (idempotent)
CREATE DATABASE IF NOT EXISTS kcdb CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE USER IF NOT EXISTS 'keycloak_user'@'%' IDENTIFIED BY 'KEYCLOAK_wgZjpIxG1vGuN7am03c';
GRANT ALL PRIVILEGES ON kcdb.* TO 'keycloak_user'@'%';

-- Create QCDB + user (with utf8mb4 for Bengali)
CREATE DATABASE IF NOT EXISTS qcdb CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE USER IF NOT EXISTS 'spring_user'@'%' IDENTIFIED BY 'SPRING_wgZjpIxG1vGuN7am03c';
GRANT ALL PRIVILEGES ON qcdb.* TO 'spring_user'@'%';

FLUSH PRIVILEGES;

