use credits;
select * from client;
select * from type_credits;
select * from credit;
select * from repayment;
select * from stuff;
select * from insurance;

INSERT INTO `credits`.`client` (`kod_сlients`, `name`, `vid_sobstvenosti`, `adress`, `telephone`, `kontact_face`) VALUES ('1', 'Семенов А.В', 'ЧП\"Вано\"', 'Сахарова д12. кв11', '06863958', 'Димидов Р.К');
INSERT INTO `credits`.`client` (`kod_сlients`, `name`, `vid_sobstvenosti`, `adress`, `telephone`, `kontact_face`) VALUES ('2', 'Димидов С.С', 'ООО\"Вамин\"', 'Арбузова д59. кв2', '09862156', 'Бенедикт П.Р');
INSERT INTO `credits`.`client` (`kod_сlients`, `name`, `vid_sobstvenosti`, `adress`, `telephone`, `kontact_face`) VALUES ('3', 'Фомичев Д.А', 'ЗАО \"ВТБ\"', 'Пушкина д34. кв134', '06689751', 'Герасимова Ю.П');
INSERT INTO `credits`.`client` (`kod_сlients`, `name`, `vid_sobstvenosti`, `adress`, `telephone`, `kontact_face`) VALUES ('4', 'Файзулина К.Р', 'ООО \"Агро\"', 'Шмидта д65. кв 44', '09876235', 'Владимирова С.К');
INSERT INTO `credits`.`client` (`kod_сlients`, `name`, `vid_sobstvenosti`, `adress`, `telephone`, `kontact_face`) VALUES ('5', 'Иванов А.Г', 'ЧП \"Кедр\"', 'Дарвина д87. кв56', '09952315', 'Никитин Д.М');
INSERT INTO `credits`.`client` (`kod_сlients`, `name`, `vid_sobstvenosti`, `adress`, `telephone`, `kontact_face`) VALUES ('6', 'Петров К.И', 'ОАО \"ТНПК\"', 'Карбышева д67. кв89', '06898712', 'Кулагин Е.Р');
INSERT INTO `credits`.`client` (`kod_сlients`, `name`, `vid_sobstvenosti`, `adress`, `telephone`, `kontact_face`) VALUES ('7', 'Фесенко В.К', 'ОАО \"Газ\"', 'Садовая д23. кв74', '09526487', 'Тимофеев В.Ф');

INSERT INTO `credits`.`type_credits` (`kod_vida`, `name`, `uslov_poluchnia`, `stavka`, `srok`) VALUES ('1', 'Оплата частями', 'беспроцентный', '0', '24 месяца');
INSERT INTO `credits`.`type_credits` (`kod_vida`, `name`, `uslov_poluchnia`, `stavka`, `srok`) VALUES ('2', 'Автокредит', 'под процент', '17', 'до 7 лет');
INSERT INTO `credits`.`type_credits` (`kod_vida`, `name`, `uslov_poluchnia`, `stavka`, `srok`) VALUES ('3', 'Кредит под залог', 'фиксированая ставка', '15', 'до 10 лет');
INSERT INTO `credits`.`type_credits` (`kod_vida`, `name`, `uslov_poluchnia`, `stavka`, `srok`) VALUES ('4', 'Ипотека', 'фиксированая ставка', '10', 'до 30 лет');

INSERT INTO `credits`.`credit` (`kod_credit`, `sum_credit`, `data_vudachi`, `type_dogovor`, `Type_credits_kod_vida`, `Client_kod_сlients`) VALUES ('1', '50000', '2020-02-12', 'Форма 3', '3', '3');
INSERT INTO `credits`.`credit` (`kod_credit`, `sum_credit`, `data_vudachi`, `type_dogovor`, `Type_credits_kod_vida`, `Client_kod_сlients`) VALUES ('2', '25000', '2019-10-11', 'Форма 1', '1', '2');
INSERT INTO `credits`.`credit` (`kod_credit`, `sum_credit`, `data_vudachi`, `type_dogovor`, `Type_credits_kod_vida`, `Client_kod_сlients`) VALUES ('3', '100000', '2019-11-28', 'Форма 2', '2', '1');
INSERT INTO `credits`.`credit` (`kod_credit`, `sum_credit`, `data_vudachi`, `type_dogovor`, `Type_credits_kod_vida`, `Client_kod_сlients`) VALUES ('4', '350000', '2020-07-29', 'Форма 3', '4', '4');
INSERT INTO `credits`.`credit` (`kod_credit`, `sum_credit`, `data_vudachi`, `type_dogovor`, `Type_credits_kod_vida`, `Client_kod_сlients`) VALUES ('5', '75000', '2020-03-21', 'Форма 3', '3', '6');
INSERT INTO `credits`.`credit` (`kod_credit`, `sum_credit`, `data_vudachi`, `type_dogovor`, `Type_credits_kod_vida`, `Client_kod_сlients`) VALUES ('6', '150000', '2019-03-17', 'Форма 2', '2', '7');
INSERT INTO `credits`.`credit` (`kod_credit`, `sum_credit`, `data_vudachi`, `type_dogovor`, `Type_credits_kod_vida`, `Client_kod_сlients`) VALUES ('7', '25000', '2020-08-29', 'Форма 1', '1', '5');

INSERT INTO `credits`.`repayment` (`kod_pogash`, `data_pogash`, `sum_pogash`, `Credit_kod_credit`, `Credit_Type_credits_kod_vida`) VALUES ('1', '2020-05-11', '10000', '1', '3');
INSERT INTO `credits`.`repayment` (`kod_pogash`, `data_pogash`, `sum_pogash`, `Credit_kod_credit`, `Credit_Type_credits_kod_vida`) VALUES ('2', '2020-02-22', '25000', '3', '2');
INSERT INTO `credits`.`repayment` (`kod_pogash`, `data_pogash`, `sum_pogash`, `Credit_kod_credit`, `Credit_Type_credits_kod_vida`) VALUES ('3', '2020-09-27', '20000', '4', '4');
INSERT INTO `credits`.`repayment` (`kod_pogash`, `data_pogash`, `sum_pogash`, `Credit_kod_credit`, `Credit_Type_credits_kod_vida`) VALUES ('4', '2020-06-18', '10000', '5', '3');
INSERT INTO `credits`.`repayment` (`kod_pogash`, `data_pogash`, `sum_pogash`, `Credit_kod_credit`, `Credit_Type_credits_kod_vida`) VALUES ('5', '2020-01-14', '5000', '2', '1');
INSERT INTO `credits`.`repayment` (`kod_pogash`, `data_pogash`, `sum_pogash`, `Credit_kod_credit`, `Credit_Type_credits_kod_vida`) VALUES ('6', '2020-12-25', '7000', '7', '1');
INSERT INTO `credits`.`repayment` (`kod_pogash`, `data_pogash`, `sum_pogash`, `Credit_kod_credit`, `Credit_Type_credits_kod_vida`) VALUES ('7', '2020-01-10', '45000', '6', '2');

INSERT INTO `credits`.`stuff` (`kod_stuff`, `name_stuff`, `stuff_post`, `Credit_kod_credit`, `Credit_Type_credits_kod_vida`) VALUES ('1', 'Ибрагимов  Д.Р', 'Фин консультант', '2', '1');
INSERT INTO `credits`.`stuff` (`kod_stuff`, `name_stuff`, `stuff_post`, `Credit_kod_credit`, `Credit_Type_credits_kod_vida`) VALUES ('2', 'Петров И.Б', 'Фин консультант', '4', '4');
INSERT INTO `credits`.`stuff` (`kod_stuff`, `name_stuff`, `stuff_post`, `Credit_kod_credit`, `Credit_Type_credits_kod_vida`) VALUES ('3', 'Хасанова И.И', 'Операционист', '1', '3');
INSERT INTO `credits`.`stuff` (`kod_stuff`, `name_stuff`, `stuff_post`, `Credit_kod_credit`, `Credit_Type_credits_kod_vida`) VALUES ('4', 'Якушев М.Б', 'Операционист', '7', '1');
INSERT INTO `credits`.`stuff` (`kod_stuff`, `name_stuff`, `stuff_post`, `Credit_kod_credit`, `Credit_Type_credits_kod_vida`) VALUES ('5', 'Логинова К.Р', 'Операционист', '3', '2');
INSERT INTO `credits`.`stuff` (`kod_stuff`, `name_stuff`, `stuff_post`, `Credit_kod_credit`, `Credit_Type_credits_kod_vida`) VALUES ('6', 'Яценюк  Ю.В', 'Операционист', '5', '3');
INSERT INTO `credits`.`stuff` (`kod_stuff`, `name_stuff`, `stuff_post`, `Credit_kod_credit`, `Credit_Type_credits_kod_vida`) VALUES ('7', 'Дьячков Ф.Л', 'Операционист', '6', '2');

INSERT INTO `credits`.`insurance` (`kod_strahovki`, `strahovaya_firma`, `kod_clients`, `sum_strahovki`, `Stuff_kod_staff`, `Credit_kod_credit`, `Credit_Type_credits_kod_vida`) VALUES ('01', 'СК\"ВУСУ\"', '1', '75000', '5', '3', '2');
INSERT INTO `credits`.`insurance` (`kod_strahovki`, `strahovaya_firma`, `kod_clients`, `sum_strahovki`, `Stuff_kod_staff`, `Credit_kod_credit`, `Credit_Type_credits_kod_vida`) VALUES ('02', 'СК\"УНИКО\"', '3', '20000', '3', '1', '3');
INSERT INTO `credits`.`insurance` (`kod_strahovki`, `strahovaya_firma`, `kod_clients`, `sum_strahovki`, `Stuff_kod_staff`, `Credit_kod_credit`, `Credit_Type_credits_kod_vida`) VALUES ('03', 'СК\"КРАИНА\"', '6', '30000', '6', '5', '3');
INSERT INTO `credits`.`insurance` (`kod_strahovki`, `strahovaya_firma`, `kod_clients`, `sum_strahovki`, `Stuff_kod_staff`, `Credit_kod_credit`, `Credit_Type_credits_kod_vida`) VALUES ('04', '\"УКР СТРАХОВАНИЕ\"', '7', '100000', '7', '6', '2');

#безусловный запрос с наличием сортировки (запрос на имя клиентов с сортировкой по виду собствености):
select vid_sobstvenosti, name from client order by vid_sobstvenosti;

#условный запрос с предикатом сравнения ():
select * from credit where sum_credit > 50000;

#условный запрос с предикатом BETWEEN
select * from credit where sum_credit between 75000 and 350000;

#условный запрос с предикатом IS NULL
select * from credit where type_dogovor is null;

#условный запрос с предикатом IN
select * from type_credits where stavka in (10,15);

#условный запрос с предикатом LIKE
select * from client where name like 'Ф%';

#безусловный запрос с группировкой и агрегатной функцией 
select avg(sum_credit), max(sum_credit), Type_credits_kod_vida from credit group by Type_credits_kod_vida;

#условный запрос с группировкой и предикатом BETWEEN
select * from credit where sum_credit between 75000 and 350000 group by type_dogovor;

#условный запрос с группировкой и предикатом IS NULL
select * from credit where type_dogovor is null group by Type_credits_kod_vida;

#условный запрос с группировкой и предикатом IN
select * from type_credits where stavka in (10,17,15) group by stavka;

#условный запрос с группировкой и предикатом LIKE
select name, data_vudachi, sum_credit from credit, client where Client_kod_сlients=kod_сlients and name like 'Ф%' group by name;

#условный запрос с группировкой и предикатом EXISTS
select kod_credit, sum(sum_credit) as 'summa', Client_kod_сlients from credit where exists( select * from credit where sum_credit > 50000) and sum_credit > 50000 group by Client_kod_сlients;

#условный запрос с группировкой и предикатом сравнения с квантором (клиент с самым большим кредитом)
select kod_сlients, name from credit, client where credit.Client_kod_сlients = kod_сlients and sum_credit>= all(select avg(sum_credit) from credit group by Client_kod_сlients);

#Привести запросы на модификацию данных. Для каждого запроса необходимо привести текстовую формулировку, запрос на языке SQL, результат выполнения (как изменилась таблица БД). 
#Запросы должны соотвествовать следующим условиям:
#безусловный запрос на обновление данных.
start transaction;
select * from client;
insert into client (name, vid_sobstvenosti, adress,telephone,kontact_face) values ('Матосова О.К', 'ЧП\"КМЗ\"', 'Красная д36. кв 45', '068634567', 'Супрунюк К. В');
select * from client;
rollback;
 
#3 разных условных запроса на обновление данных
start transaction;
select * from repayment;
update repayment set sum_pogash = 8000 where kod_pogash=5;

select * from type_credits;
update type_credits set stavka = 12 where kod_vida=4;

select * from insurance;
update insurance set sum_strahovki= 25000 where kod_strahovki = 2; 
rollback;

#безусловный запрос на удаление данных
start transaction;
delete from client;
select * from client;
rollback;

#3 разных условных запроса на удаление данных
start transaction;
select * from insurance;
delete from insurance where kod_strahovki=4;

select * from stuff;
delete from stuff where kod_stuff=1;

select * from repayment;
delete from repayment where kod_pogash=2;
rollback;

