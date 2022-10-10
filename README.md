## About this project
**[This](https://github.com/benquang/demophpweb/tree/develop)** is a simple project that describes how to work with RestAPI in PHP, let's start with a simple example using GET request method, for more request methods, read this blog: https://rapidapi.com/blog/how-to-use-an-api/amp/

## Requirements
- PHP 7 and above.
- MySql.
- Extension: curl, mysqli.

## Installation
First, you need to install PHP: https://www.php.net/downloads.php

In this project I'm using Mysql, go to this link and download the lastest version: https://www.mysql.com/downloads/

We need to install both curl and mysqli extensions, here is how to install they for window, go to the your PHP folder such as C:\PHP\ and find php.ini file, then enable that extension:
```
extension = curl
extension = mysqli
```
## Configuration
After you installed MySql, you need to import data that require for this project, go to the this folder: 
https://github.com/benquang/demophpweb/tree/develop/toysScript

You have to create a database named `toys`.
There are 2 sql script files, you need to import toys_category and toys_toys in order to your database, you can refer this guide: https://simplebackups.com/blog/how-to-import-sql-file-in-mysql/

This project uses mysqli extension to connect to MySql, so you need to configure your MySql's host, user and password by changing the value of db_connnection.php file, here I set $dbhost = "localhost" by default:
```
 $dbhost = "localhost";
 $dbuser = "text here";
 $dbpass = "text here";
```

## Folder Structure
In this branch, you just need to focus on some files:
- `demophpweb`/index.php
- `demophpweb`/db_connnection.php

### index.php
Server will runs this file by default.

### db_connnection.php
This file's mission is connect to MySql DBMS.

## Usage
Open cmd, go to this folder's location, may sure that you have downloaded it before and type:
```
php -S localhost:8000
```

