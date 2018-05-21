# DB_Project_Database
This repositort is a part of 2110422 Database Management Systems Design course project of Chulalongkorn University. The full application is in <https://github.com/pangpond510/DB_Project_App>

## Getting Started
To build images:
```
$ sudo docker build -t db-mysql .
```
To run containers:
```
$ sudo docker run -it --name db-project-database -p 3306:3306 -e MYSQL_ROOT_PASSWORD=my-secret-password --rm db-mysql
```