FROM mysql:latest

RUN ln -fs /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && chown -R mysql:root /var/lib/mysql/

COPY my.cnf /etc/mysql/conf.d/my.cnf

RUN chmod 0444 /etc/mysql/conf.d/my.cnf
