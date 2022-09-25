CREATE TABLE products(
	id int not null auto_increment,
    name varchar(50) not null,
    created_by int not null,
    marca varchar(50) not null,
    primary key (id),
    foreign key (created_by) references user(id)
);

rename table prodcut to product;

INSERT INTO product (name, created_by, marca)
values
	('ipad', 1, 'apple'),
    ('iphone', 1, 'apple'),
    ('watch', 2, 'apple'),
    ('macbook', 1, 'apple'),
    ('imac', 3, 'apple'),
    ('ipad mini', 2, 'apple');
    
SELECT * FROM product;

SELECT u.id, u.email, p.name FROM user u left join product p on u.id=p.created_by;

SELECT u.id, u.email, p.name FROM user u right join product p on u.id=p.created_by;

SELECT u.id, u.email, p.name FROM user u inner join product p on u.id=p.created_by;

SELECT u.id, u.name, p.id, p.name FROM user u CROSS JOIN product p;

SELECT count(id), marca FROM product group by marca;

SELECT count(p.id), u.name FROM product p left join user u on u.id=p.created_by group by p.created_by;

SELECT count(p.id), u.name FROM product p left join user u 
on u.id=p.created_by group by p.created_by
having count(p.id) >= 2;

drop table product;
drop table animales;
drop table user;