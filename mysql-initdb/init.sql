CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name varchar(255) not null,
    email varchar(255) not null,
    password varchar(255) not null
);

insert into users (name, email, password) values ("username1", "justAnExample@test.com", "justATestPassword");
insert into users (name, email, password) values ("username2", "justAnExample2@test.com", "justATestPassword2");
insert into users (name, email, password) values ("username3", "justAnExample3@test.com", "justATestPassword3");
