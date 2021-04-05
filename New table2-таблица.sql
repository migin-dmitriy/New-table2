
create table if not exists users
(
    id        serial primary key,
    name      varchar(255)        not null default '',
    last_name varchar(255)        not null default '',
    work      varchar(255)        not null default '',
    email     varchar(255) UNIQUE not null default '',
    work_id   int,
    users_id  int,
    price     NUMERIC,
    UNIQUE (email)

);

create table if not exists works
(
    id      serial primary key,
    works_name varchar(255) not null default '',
    status     bool
);

create table if not exists timing
(
    id      serial primary key,
    code    varchar(255) not null default '',
    track   uuid,
    work_id int,
    user_id int
);

insert into users (name, last_name, email, price)
VALUES ('migin', 'dmitriy', 'igor.migin@mail.ru', '55000'),
       ('mixail', 'ryibov', 'mihail.ryabov.2002@mail.ru', '40000'),
       ('anton', 'ershov', 'ahtoika12@gmail.com','60000'),
       ('danila', 'petrukhin', 'danilapetrukhin@mail.ru', '68000'),
       ('daniil', 'kirsanov', 'hvck1337@yandex.ru', '70000'),
       ('vlad', 'kirsanov', 'wladnext98@mail.ru','50000'),
       ('jaroslav', 'mihailov', 'tosha.zakharov.0201@mail.ru', '48000');

select DISTINCT id, name, last_name,email,price
from users where price >= 68000 or name = 'migin'
ORDER BY price ASC;

select DISTINCT name, last_name,price
from users where price >= 68000 or name = 'migin' limit 5;

insert into users (name, last_name, email) values ('egor','biridze','egor.biridze@mail.ru');
select id, name,last_name, email from users where price >= 68000 or name = 'egor';

select DISTINCT  name, last_name,email
from users where id = 271;
update users set name = 'egor-v-tanke', last_name = 'biridze123' where  id = 271;


select id,name, last_name,email from users where last_name = 'biridze123';

select id,name, last_name,email from users where id in (8,28,37);

select id,name, last_name,email from users where id not in (2,3,4,5,6,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33);

select id,name, last_name,email from users where id >= 8 and id <= 18;