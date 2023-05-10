use scooby;

insert into content(title, location, us_airdate, television, film, rating)
	select distinct s.title, s.location, s.us_airdate, s.television, s.film, s.rating
	from data s;

SELECT 
    *
FROM
    content;

insert into monster(monster, content_id, species, strength, villain, appearance)
	select distinct s.monster, c.content_id, s.species, s.strength, s.villain, s.appearance
	from data s
    join content c on c.title = s.title;

SELECT 
    *
FROM
    monster;