FROM cosmohome

RUN apt-get update && apt-get install -y mysql-client

COPY project_news.inc create_forums.php /root/migrate/
