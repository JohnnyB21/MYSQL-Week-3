CREATE database social_media;
show databases;
create table users (
id int(11) not null auto_increment,
user_name varchar(20) not null,
password varchar(20) not null,
email varchar(40) not null,
primary key (id)
);
use social_media;
desc users;
show tables from social_media;
create table posts (
id int(11) not null auto_increment,
user_id int(11) not null,
post_content text,
post_date datetime default current_timestamp,
primary key (id),
foreign key (user_id) references users(id)
);
desc posts;
create table comments (
id int(11) not null auto_increment,
user_id int(11) not null,
post_id int (11) not null,
comment_content tinytext not null,
comment_date datetime default current_timestamp,
primary key (id),
foreign key (user_id) references users(id),
foreign key (post_id) references posts(id)
);
desc comments;
