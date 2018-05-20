FROM mysql:5.7

WORKDIR /src

COPY . .

EXPOSE 3306

CMD /etc/init.d/mysql start && \
  /bin/bash import_sql.sh && \
  service mysql status && \
  /bin/bash 