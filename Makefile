build:
	docker build -t cosmohome_migrate .

run:
	docker run --link cosmohome_mysql:mysql \
   			   --volumes-from=cosmohome_projectdata \
   			   -v `pwd`:/root/migrate \
   			   --hostname=cosmohome \
   			   --name cosmohome_migrate \
   			   --rm \
   			   -it \
   			   cosmohome_migrate
