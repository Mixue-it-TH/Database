FROM mysql/mysql-server

ENV MYSQL_RANDOM_ROOT_PASSWORD=true
ENV MYSQL_USER=dev
ENV MYSQL_PASSWORD=M7XKEt09m1
ENV MYSQL_DATABASE=itbkanban3
ENV MYSQL_CHARSET=utf8mb4
ENV MYSQL_COLLATION=utf8mb4_unicode_ci

COPY scripts/ /docker-entrypoint-initdb.d/