create table movie(
id int primary key not null,
title varchar(100) not null,
releaseyear int null,
category varchar(100) null,
rating dec(4,2)
);


insert into movie (id, title, releaseyear, category, rating)
values (1, 'The Godfather', 1972, 'Drama', 9.2);

insert into movie (id, title, releaseyear, category, rating)
values (2, 'The Dark Knight', 2008, 'Action' 9.0);

insert into movie (id, title, releaseyear, category, rating)
values (3, 'The Lord of the Rings', 2003, 'Action' 9.0);