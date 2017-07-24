FROM mysql:5.7

ENV MYSQL_ROOT_PASSWORD root

ADD my.cnf /etc/mysql/my.cnf
ADD *.sql /docker-entrypoint-initdb.d/ 
