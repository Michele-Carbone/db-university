--1. Selezionare tutti gli studenti nati nel 1990 (160)--
SELECT * 
FROM `students` 
WHERE `date_of_birth` 
LIKE '1990%';

--2. Selezionare tutti i corsi che valgono più di 10 crediti (479)--
SELECT `cfu` 
FROM `courses` 
WHERE `cfu` > 10;

--3. Selezionare tutti gli studenti che hanno più di 30 anni--
--prima soluzione
SELECT `name`, `surname` 
FROM `students` 
WHERE `date_of_birth` <= '1991-09-29';
--seconda soluzione
SELECT `name`, `surname` 
FROM `students` 
WHERE TIMESTAMPDIFF(YEAR, `date_of_birth`, CURDATE()) > 30; --CURDATE() sta per data corrente
--terza soluzione
SELECT `name`, `surname` 
FROM `students` 
WHERE `date_of_birth` < DATE_SUB(CURDATE(), INTERVAL 30 YEAR); --DATE_SUB() fa una operazione tra la data corrente e gli anni/mesi/giorni che voglio togliere [TOGLIMI LA DATA ATTUALE DA UNA DATA INTERA E CI RESTITUISCE UNA DATA NUOVA CON QUELLO TOLTO] INTERVAL


--4. Selezionare tutti i corsi del primo semestre del primo anno di un qualsiasi corso di laurea (286)--
SELECT `period`,`year` 
FROM `courses` 
WHERE `period` = 'I semestre'
AND `year` = '1';

--5. Selezionare tutti gli appelli d'esame che avvengono nel pomeriggio (dopo le 14) del 20/06/2020 (21)--
SELECT * 
FROM `exams` 
WHERE `hour` > '14:00:00' 
AND `date` = '2020/06/20';

--6. Selezionare tutti i corsi di laurea magistrale (38)--
SELECT `level` 
FROM `degrees` 
WHERE `level`= 'magistrale';

--7. Da quanti dipartimenti è composta l'università? (12)--
--da sistemare
SELECT COUNT(*) AS `numero_dipartimenti` 
FROM `departments`
WHERE `phone` IS NULL;

--8. Quanti sono gli insegnanti che non hanno un numero di telefono? (50)--
SELECT COUNT(*) AS `numero_insegnanti` 
FROM `teachers`
WHERE `phone` IS NULL;



