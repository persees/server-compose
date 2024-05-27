CREATE DATABASE [public];
GO

USE [public];
GO

CREATE TABLE users (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    name NVARCHAR(50),
    email NVARCHAR(100),
    password NVARCHAR(100)
);
GO

insert into users (name, email, password) values ('username1', 'justAnExample@test.com', 'justATestPassword');
insert into users (name, email, password) values ('username2', 'justAnExample2@test.com', 'justATestPassword2');
insert into users (name, email, password) values ('username3', 'justAnExample3@test.com', 'justATestPassword3');