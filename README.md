# RestAPI Demo
**[This](https://github.com/benquang/demophpweb/tree/develop)** is a simple project that describes how to work with RestAPI in PHP.

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

This project uses mysqli extension to connect to MySql, so you need to configure your MySql's host, user and password by changing the value of 
