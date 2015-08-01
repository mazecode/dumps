-- MySQL dump 10.13  Distrib 5.6.23, for Win32 (x86)
--
-- Host: localhost    Database: amicarcotizante2
-- ------------------------------------------------------
-- Server version	5.6.25-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping events for database 'amicarcotizante2'
--

--
-- Dumping routines for database 'amicarcotizante2'
--
/*!50003 DROP PROCEDURE IF EXISTS `ADD_BODY_MAIL_AMICAR` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`test`@`*` PROCEDURE `ADD_BODY_MAIL_AMICAR`()
BEGIN

DECLARE GRUPO INT DEFAULT 1;
DECLARE DIASEMANA VARCHAR(10);
DECLARE VB_TERMINA VARCHAR(10);
DECLARE UNICO INT DEFAULT 0;
DECLARE MSG VARCHAR(10);

DECLARE ADD_ID CURSOR FOR SELECT IDCLIENTE FROM CLIENTESDIARIO;
DECLARE CONTINUE HANDLER FOR NOT FOUND SET VB_TERMINA = TRUE;

DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
GET DIAGNOSTICS CONDITION 1 @SQLSTATE = RETURNED_SQLSTATE, 
@ERRNO = MYSQL_ERRNO, @TEXT = MESSAGE_TEXT;
SET @FULL_ERROR = CONCAT("ERROR ", @ERRNO, " (", @SQLSTATE, "): ", @TEXT);
SELECT @FULL_ERROR;
END;

SET FOREIGN_KEY_CHECKS = 0;    
SET SQL_SAFE_UPDATES = 0;  

UPDATE CLIENTESDIARIO SET EMAILCLIENTE=REPLACE(EMAILCLIENTE, '\\', ''), VALORVEHICULO=REPLACE(VALORVEHICULO, '\\', '');   

SET @DIASEMANA = (SELECT DAYNAME(NOW()));

INSERT INTO CORREOSERRORFORMATO (IDCLIENTE,RUTCLIENTE,EMAILCLIENTE,NOMBRELOCAL,NOMBREVENDEDOR,RUTVENDEDOR,
RUTEJECUTIVOADJUDICA,NOMBREEJECUTIVOADJUDICA,NOMBRECLIENTE,FONOCELULAR,
FONOCOMERCIAL,FONOPARTICULAR,MARCAVEHICULO,MODELOVEHICULO,VALORVEHICULO,
IDGRUPO,IDBODY,FECHA,NOMBREJRN,ESTADO)    
SELECT IDCLIENTE,RUTCLIENTE,EMAILCLIENTE,NOMBRELOCAL,NOMBREVENDEDOR,RUTVENDEDOR,
RUTEJECUTIVOADJUDICA,NOMBREEJECUTIVOADJUDICA,NOMBRECLIENTE,FONOCELULAR,
FONOCOMERCIAL,FONOPARTICULAR,MARCAVEHICULO,MODELOVEHICULO,VALORVEHICULO,
IDGRUPO,IDBODY,FECHA,NOMBREJRN,'Error Formato Correo'
FROM CLIENTESDIARIO 
WHERE    EMAILCLIENTE REGEXP 'ñ(.*)@(.*)\.(.*)'
OR EMAILCLIENTE REGEXP '(.*)ñ(.*)@(.*)\.(.*)'
OR EMAILCLIENTE REGEXP '(.*)ñ@(.*)\.(.*)'
OR EMAILCLIENTE REGEXP '(.*)@ñ(.*)\.(.*)'          
OR EMAILCLIENTE REGEXP '(.*)@(.*)ñ(.*)\.(.*)'
OR EMAILCLIENTE REGEXP '(.*)@(.*)ñ\.(.*)'
OR EMAILCLIENTE REGEXP 'xxx(.*)@(.*)\.(.*)'
OR EMAILCLIENTE REGEXP '(.*)xxx(.*)@(.*)\.(.*)'
OR EMAILCLIENTE REGEXP '(.*)xxx@(.*)\.(.*)'		  
OR EMAILCLIENTE REGEXP '(.*)@xxx(.*)\.(.*)'          
OR EMAILCLIENTE REGEXP '(.*)@(.*)xxx(.*)\.(.*)'
OR EMAILCLIENTE REGEXP '(.*)@(.*)xxx\.(.*)'
OR EMAILCLIENTE REGEXP 'notiene@(.*)\.(.*)'
OR EMAILCLIENTE REGEXP '(.*)@notiene\.(.*)'
OR EMAILCLIENTE REGEXP 'notienecorreo@(.*)\.(.*)'	  
OR EMAILCLIENTE REGEXP '(.*)@notienecorreo\.(.*)'
OR EMAILCLIENTE REGEXP 'nousa@(.*)\.(.*)'
OR EMAILCLIENTE REGEXP '(.*)@nousa\.(.*)'
OR EMAILCLIENTE REGEXP 'nousacorreo@(.*)\.(.*)'
OR EMAILCLIENTE REGEXP '(.*)@nousacorreo\.(.*)'
OR EMAILCLIENTE REGEXP 'ntiene@(.*)\.(.*)'
OR EMAILCLIENTE REGEXP '(.*)@ntiene\.(.*)'
OR EMAILCLIENTE REGEXP 'sincorreo@(.*)\.(.*)'
OR EMAILCLIENTE REGEXP '(.*)@sincorreo\.(.*)'
OR EMAILCLIENTE REGEXP 'sininfo@(.*)\.(.*)'
OR EMAILCLIENTE REGEXP '(.*)@sininfo\.(.*)'
OR EMAILCLIENTE REGEXP 'sinmail@(.*)\.(.*)'
OR EMAILCLIENTE REGEXP '(.*)@sinmail\.(.*)'
OR EMAILCLIENTE REGEXP '^[0-9]+$'
OR EMAILCLIENTE REGEXP '^[0-9]+$@(.*)\.(.*)'
OR EMAILCLIENTE REGEXP '(.*)@^[0-9]+$\.(.*)'   
OR EMAILCLIENTE REGEXP '(.*)@(.*)\.^[0-9]+$'
OR EMAILCLIENTE NOT REGEXP '(.*)@(.*).(.*)'
OR EMAILCLIENTE REGEXP 'NOTIENE@NOTIENE.(.*)'
OR EMAILCLIENTE REGEXP '[[:space:]]'
OR EMAILCLIENTE REGEXP '[[:blank:]]'
OR EMAILCLIENTE = ""
OR EMAILCLIENTE IS NULL;

DELETE FROM CLIENTESDIARIO 
WHERE
    EMAILCLIENTE REGEXP 'ñ(.*)@(.*).(.*)'
    OR EMAILCLIENTE REGEXP '(.*)ñ(.*)@(.*).(.*)'
    OR EMAILCLIENTE REGEXP '(.*)ñ@(.*).(.*)'
    OR EMAILCLIENTE REGEXP '(.*)@ñ(.*).(.*)'
    OR EMAILCLIENTE REGEXP '(.*)@(.*)ñ(.*).(.*)'
    OR EMAILCLIENTE REGEXP '(.*)@(.*)ñ.(.*)'
    OR EMAILCLIENTE REGEXP 'xxx(.*)@(.*).(.*)'
    OR EMAILCLIENTE REGEXP '(.*)xxx(.*)@(.*).(.*)'
    OR EMAILCLIENTE REGEXP '(.*)xxx@(.*).(.*)'
    OR EMAILCLIENTE REGEXP '(.*)@xxx(.*).(.*)'
    OR EMAILCLIENTE REGEXP '(.*)@(.*)xxx(.*).(.*)'
    OR EMAILCLIENTE REGEXP '(.*)@(.*)xxx.(.*)'
    OR EMAILCLIENTE REGEXP 'notiene@(.*).(.*)'
    OR EMAILCLIENTE REGEXP '(.*)@notiene.(.*)'
    OR EMAILCLIENTE REGEXP 'notienecorreo@(.*).(.*)'
    OR EMAILCLIENTE REGEXP '(.*)@notienecorreo.(.*)'
    OR EMAILCLIENTE REGEXP 'nousa@(.*).(.*)'
    OR EMAILCLIENTE REGEXP '(.*)@nousa.(.*)'
    OR EMAILCLIENTE REGEXP 'nousacorreo@(.*).(.*)'
    OR EMAILCLIENTE REGEXP '(.*)@nousacorreo.(.*)'
    OR EMAILCLIENTE REGEXP 'ntiene@(.*).(.*)'
    OR EMAILCLIENTE REGEXP '(.*)@ntiene.(.*)'
    OR EMAILCLIENTE REGEXP 'sincorreo@(.*).(.*)'
    OR EMAILCLIENTE REGEXP '(.*)@sincorreo.(.*)'
    OR EMAILCLIENTE REGEXP 'sininfo@(.*).(.*)'
    OR EMAILCLIENTE REGEXP '(.*)@sininfo.(.*)'
    OR EMAILCLIENTE REGEXP 'sinmail@(.*).(.*)'
    OR EMAILCLIENTE REGEXP '(.*)@sinmail.(.*)'
    OR EMAILCLIENTE REGEXP '^[0-9]+$'
    OR EMAILCLIENTE REGEXP '^[0-9]+$@(.*).(.*)'
    OR EMAILCLIENTE REGEXP '(.*)@^[0-9]+$.(.*)'
    OR EMAILCLIENTE REGEXP '(.*)@(.*).^[0-9]+$'
    OR EMAILCLIENTE NOT REGEXP '(.*)@(.*).(.*)'
    OR EMAILCLIENTE REGEXP 'NOTIENE@NOTIENE.(.*)'
    OR EMAILCLIENTE REGEXP '[[:space:]]'
    OR EMAILCLIENTE REGEXP '[[:blank:]]'
    OR EMAILCLIENTE = ''
    OR EMAILCLIENTE IS NULL;

INSERT INTO CORREOSERRORFORMATO (IDCLIENTE,RUTCLIENTE,EMAILCLIENTE,NOMBRELOCAL,NOMBREVENDEDOR,RUTVENDEDOR,
RUTEJECUTIVOADJUDICA,NOMBREEJECUTIVOADJUDICA,NOMBRECLIENTE,FONOCELULAR,
FONOCOMERCIAL,FONOPARTICULAR,MARCAVEHICULO,MODELOVEHICULO,VALORVEHICULO,
IDGRUPO,IDBODY,FECHA,NOMBREJRN,ESTADO)    
SELECT IDCLIENTE,RUTCLIENTE,EMAILCLIENTE,NOMBRELOCAL,NOMBREVENDEDOR,RUTVENDEDOR,
RUTEJECUTIVOADJUDICA,NOMBREEJECUTIVOADJUDICA,NOMBRECLIENTE,FONOCELULAR,
FONOCOMERCIAL,FONOPARTICULAR,MARCAVEHICULO,MODELOVEHICULO,VALORVEHICULO,
IDGRUPO,IDBODY,FECHA,NOMBREJRN,'Error Rut Vendedor'
FROM CLIENTESDIARIO 
WHERE  	RUTVENDEDOR = ""
OR RUTVENDEDOR IS NULL;

DELETE FROM CLIENTESDIARIO 
WHERE
    RUTVENDEDOR = '' OR RUTVENDEDOR IS NULL;

INSERT INTO CORREOSERRORFORMATO (IDCLIENTE,RUTCLIENTE,EMAILCLIENTE,NOMBRELOCAL,NOMBREVENDEDOR,RUTVENDEDOR,
RUTEJECUTIVOADJUDICA,NOMBREEJECUTIVOADJUDICA,NOMBRECLIENTE,FONOCELULAR,
FONOCOMERCIAL,FONOPARTICULAR,MARCAVEHICULO,MODELOVEHICULO,VALORVEHICULO,
IDGRUPO,IDBODY,FECHA,NOMBREJRN,ESTADO)    
SELECT IDCLIENTE,RUTCLIENTE,EMAILCLIENTE,NOMBRELOCAL,NOMBREVENDEDOR,RUTVENDEDOR,
RUTEJECUTIVOADJUDICA,NOMBREEJECUTIVOADJUDICA,NOMBRECLIENTE,FONOCELULAR,
FONOCOMERCIAL,FONOPARTICULAR,MARCAVEHICULO,MODELOVEHICULO,VALORVEHICULO,
IDGRUPO,IDBODY,FECHA,NOMBREJRN,'Error Rut Ejecutivo'
FROM CLIENTESDIARIO 
WHERE  	RUTEJECUTIVOADJUDICA = ""
OR RUTEJECUTIVOADJUDICA IS NULL;

DELETE FROM CLIENTESDIARIO 
WHERE
    RUTEJECUTIVOADJUDICA = ''
    OR RUTEJECUTIVOADJUDICA IS NULL;

DELETE Cd FROM CLIENTESDIARIO AS CD
        INNER JOIN
    CLIENTES AS C ON C.RUTCLIENTE = CD.RUTCLIENTE 
WHERE
    C.DESINSCRITO = 1;

IF (LOWER(@DIASEMANA) = 'monday') THEN	
TRUNCATE CLIENTESSEMANAL;
OPEN ADD_ID;
RECORRE_CURSOR: LOOP
FETCH ADD_ID INTO UNICO;
IF VB_TERMINA THEN
LEAVE RECORRE_CURSOR;
END IF;
IF GRUPO <= 4 THEN
UPDATE CLIENTESDIARIO
SET IDGRUPO = GRUPO
WHERE IDCLIENTE = UNICO;     

SET GRUPO = GRUPO + 1;

ELSE

UPDATE CLIENTESDIARIO C
SET C.IDGRUPO = 1
WHERE C.IDCLIENTE = UNICO 
AND C.IDGRUPO IS NULL;  

SET GRUPO = 2;

END IF;
END LOOP;
CLOSE ADD_ID;

UPDATE CLIENTESDIARIO 
SET 
    IDBODY = 1
WHERE
    IDGRUPO IN (1 , 2) AND IDBODY IS NULL;

UPDATE CLIENTESDIARIO 
SET 
    IDBODY = 2
WHERE
    IDGRUPO IN (3) AND IDBODY IS NULL;

UPDATE CLIENTESDIARIO 
SET 
    IDBODY = 3
WHERE
    IDGRUPO IN (4) AND IDBODY IS NULL;

DELETE FROM CLIENTESSEMANAL;

INSERT INTO CLIENTESSEMANAL (IDCLIENTE,RUTCLIENTE,EMAILCLIENTE,NOMBRELOCAL,NOMBREVENDEDOR,RUTVENDEDOR,
RUTEJECUTIVOADJUDICA,NOMBREEJECUTIVOADJUDICA,NOMBRECLIENTE,FONOCELULAR,
FONOCOMERCIAL,FONOPARTICULAR,MARCAVEHICULO,MODELOVEHICULO,VALORVEHICULO,
IDGRUPO,IDBODY,FECHA,NOMBREJRN)
SELECT IDCLIENTE,RUTCLIENTE,EMAILCLIENTE,NOMBRELOCAL,NOMBREVENDEDOR,RUTVENDEDOR,
RUTEJECUTIVOADJUDICA,NOMBREEJECUTIVOADJUDICA,NOMBRECLIENTE,FONOCELULAR,
FONOCOMERCIAL,FONOPARTICULAR,MARCAVEHICULO,MODELOVEHICULO,VALORVEHICULO,
IDGRUPO,IDBODY,FECHA,NOMBREJRN
FROM CLIENTESDIARIO;

ELSE

UPDATE CLIENTESDIARIO AS C
INNER JOIN CLIENTESSEMANAL AS S  
ON S.EMAILCLIENTE = C.EMAILCLIENTE
SET C.IDGRUPO = S.IDGRUPO, C.IDBODY = S.IDBODY;

OPEN ADD_ID;

RECORRE_CURSOR2: LOOP
FETCH ADD_ID INTO UNICO;
IF VB_TERMINA THEN
LEAVE RECORRE_CURSOR2;
END IF;

IF GRUPO <= 4 THEN

UPDATE CLIENTESDIARIO C
SET C.IDGRUPO = GRUPO
WHERE C.IDCLIENTE = UNICO 
AND C.IDGRUPO IS NULL;  

SET GRUPO = GRUPO + 1;
ELSE

UPDATE CLIENTESDIARIO C
SET C.IDGRUPO = 1
WHERE C.IDCLIENTE = UNICO 
AND C.IDGRUPO IS NULL;  

SET GRUPO = 2;
END IF;
END LOOP;
CLOSE ADD_ID;

UPDATE CLIENTESDIARIO 
SET 
    IDBODY = 1
WHERE
    IDGRUPO IN (1 , 2) AND IDBODY IS NULL;

UPDATE CLIENTESDIARIO 
SET 
    IDBODY = 2
WHERE
    IDGRUPO IN (3) AND IDBODY IS NULL;

UPDATE CLIENTESDIARIO 
SET 
    IDBODY = 3
WHERE
    IDGRUPO IN (4) AND IDBODY IS NULL;

INSERT INTO CLIENTESSEMANAL (IDCLIENTE,RUTCLIENTE,EMAILCLIENTE,NOMBRELOCAL,NOMBREVENDEDOR,RUTVENDEDOR,
RUTEJECUTIVOADJUDICA,NOMBREEJECUTIVOADJUDICA,NOMBRECLIENTE,FONOCELULAR,
FONOCOMERCIAL,FONOPARTICULAR,MARCAVEHICULO,MODELOVEHICULO,VALORVEHICULO,
IDGRUPO,IDBODY,FECHA,NOMBREJRN)
SELECT IDCLIENTE,RUTCLIENTE,EMAILCLIENTE,NOMBRELOCAL,NOMBREVENDEDOR,RUTVENDEDOR,
RUTEJECUTIVOADJUDICA,NOMBREEJECUTIVOADJUDICA,NOMBRECLIENTE,FONOCELULAR,
FONOCOMERCIAL,FONOPARTICULAR,MARCAVEHICULO,MODELOVEHICULO,VALORVEHICULO,
IDGRUPO,IDBODY,FECHA,NOMBREJRN
FROM CLIENTESDIARIO CS WHERE DATE(CS.FECHA) NOT IN (SELECT DATE(FECHA) FROM CLIENTESSEMANAL);

END IF;

INSERT INTO CLIENTES (IDCLIENTE,RUTCLIENTE,EMAILCLIENTE,NOMBRELOCAL,NOMBREVENDEDOR,RUTVENDEDOR,
RUTEJECUTIVOADJUDICA,NOMBREEJECUTIVOADJUDICA,NOMBRECLIENTE,FONOCELULAR,
FONOCOMERCIAL,FONOPARTICULAR,MARCAVEHICULO,MODELOVEHICULO,VALORVEHICULO,
IDGRUPO,IDBODY,FECHA,NOMBREJRN)
SELECT IDCLIENTE,RUTCLIENTE,EMAILCLIENTE,NOMBRELOCAL,NOMBREVENDEDOR,RUTVENDEDOR,
RUTEJECUTIVOADJUDICA,NOMBREEJECUTIVOADJUDICA,NOMBRECLIENTE,FONOCELULAR,
FONOCOMERCIAL,FONOPARTICULAR,MARCAVEHICULO,MODELOVEHICULO,VALORVEHICULO,
IDGRUPO,IDBODY,FECHA,NOMBREJRN
FROM CLIENTESSEMANAL CS WHERE DATE(CS.FECHA) NOT IN (SELECT DATE(FECHA) FROM CLIENTES);

UPDATE EJECUTIVOS SET CORREOEJECUTIVO = REPLACE(CORREOEJECUTIVO, '\\', '');

SET SQL_SAFE_UPDATES = 1;
SET FOREIGN_KEY_CHECKS = 1;

SELECT COUNT(IDCLIENTE) INTO @ERRORES FROM CORREOSERRORFORMATO WHERE DATE(FECHA)=CURDATE();
SELECT COUNT(IDCLIENTE) INTO @LIMPIOS FROM CLIENTESDIARIO WHERE DATE(FECHA)=CURDATE();
SELECT CAST(CONCAT('STORED PROCEDURE \'ADD_BODY_MAIL_AMICAR\' FINISH OK - CLIENTESDIARIOS LIMPIOS: ', @LIMPIOS, ' | ERRORES: ', @ERRORES) AS CHAR(10000) CHARACTER SET utf8) AS MSG;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CLEAN_CLIENTESDIARIO_AMICAR` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`test`@`*` PROCEDURE `CLEAN_CLIENTESDIARIO_AMICAR`()
BEGIN

DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
GET DIAGNOSTICS CONDITION 1 @SQLSTATE = RETURNED_SQLSTATE, 
@ERRNO = MYSQL_ERRNO, @TEXT = MESSAGE_TEXT;
SET @FULL_ERROR = CONCAT("ERROR ", @ERRNO, " (", @SQLSTATE, "): ", @TEXT);
SELECT @FULL_ERROR;
END;

SET FOREIGN_KEY_CHECKS = 0;    
SET SQL_SAFE_UPDATES = 0;  

DELETE FROM CLIENTESDIARIO WHERE FECHA < CURDATE();

SET SQL_SAFE_UPDATES = 1;
SET FOREIGN_KEY_CHECKS = 1;

SELECT 'DELETED' AS MSG;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-07-20 23:54:13
