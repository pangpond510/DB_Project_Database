# DB_Project_Database
This repositort is a part of 2110422 Database Management Systems Design course project of Chulalongkorn University. The full application is in <https://github.com/pangpond510/DB_Project_App>

## Getting Started
To build images:
```
$ sudo docker build -t db-mysql .
```
To run containers:
```
$ sudo docker run -it --name db-project-database -p 3306:3306 -e MYSQL_ROOT_PASSWORD=my-secret-password db-mysql
```
This command will run docker container which exposes to the host on port 3306. Feel free to replace ```db-project-database ``` with any container name and ```my-secret-password``` with any password of your choice for the root. Warnings may appear from MySQL service but no errors should appear. If you see ```MySQL Community Server 5.7.22 is running.``` then you should be safe.