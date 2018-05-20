#!/bin/bash

# Client Credentials Config file (WILL BE OVERWRITED IF EXISTS)
CLIENT_CNF=client.cnf

# Update client.cnf file 
# $MYSQL_ROOT_PASSWORD is defined in mysql docker
# otherwise use default root password as root

echo "[client]" > $CLIENT_CNF
echo "user=root" >> $CLIENT_CNF

if [ $MYSQL_ROOT_PASSWORD ]
then
	echo "password=$MYSQL_ROOT_PASSWORD" >> $CLIENT_CNF
else
	echo "password=root" >> $CLIENT_CNF
fi

echo "Created mysql client config file as '$CLIENT_CNF'"

echo "Creating the database"

echo "Processing db.project.database.sql"
cat database/db.project.database.sql | mysql --defaults-file=$CLIENT_CNF --default-character-set=utf8

echo "Processing db.project.structure.sql"
cat database/db.project.structure.sql | mysql --defaults-file=$CLIENT_CNF --default-character-set=utf8

echo "Processing db.project.data.sql"
cat database/db.project.data.sql | mysql --defaults-file=$CLIENT_CNF --default-character-set=utf8

echo "Processing db.project.user.sql"
cat database/db.project.user.sql | mysql --defaults-file=$CLIENT_CNF --default-character-set=utf8

echo "Finished "
