/* EJERCICIOS MYSQL*/
/*--------------------------------------------------------------------------------------*/
/*NUMERO 1 */
SELECT country.name, country.continent, countrylanguage.language FROM world.country
inner join world.countrylanguage on code = CountryCode
where continent = "South America";

/*NUMERO 2*/
SELECT country.code, country.name, city.name, city.District, city.Population FROM world.city
INNER JOIN world.country on countrycode = code
WHERE country.code in ('ARG','CHl','URY') and ( city.name like 'M%' or city.name like 'P%')
ORDER BY city.name DESC;

/*NUMERO 3*/
SELECT language , COUNT(language) FROM world.countrylanguage
group by language
order by COUNT(language) desc
LIMIT 0,10;

/*NUMERO 4*/
SELECT continent, sum(population) FROM world.country
where continent = 'europe';

/*NUMERO 5*/
SELECT continent, sum(population) FROM world.country
group by continent
order by sum(population) desc;

/*NUMERO 6*/
SELECT city.name, countrylanguage.language, countrylanguage.isOfficial FROM world.city
inner join world.countrylanguage on city.CountryCode = countrylanguage.countrycode
where name = 'guadalajara' and isofficial = true;

/*NUMERO 7*/
insert into world.countrylanguage(language, countrycode, isofficial)
values ('Cordobes','ARG','F');

/*NUMERO 8*/
update world.country
set name = 'Islas Malvinas'
where name = 'falkland islands';

update world.country
set localname = 'Islas Malvinas'
where localname = 'falkland islands';

/*NUMERO 9*/
delete from world.city
where city.population <= 500;

delete from world.city
where city.district = '';