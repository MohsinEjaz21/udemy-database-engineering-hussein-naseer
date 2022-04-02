> &&&&&&&&&&&&&& Steps To Run &&&&&&&&&&&&&&

1- Run the postgres Docker container with the following command: (goto Action#01)

# To create docker container and run it
docker-compose up -d --force-recreate;

# to see the docker container running
docker-compose ps

# run the docker db(our) service
docker-compose run my_psql_service bash      

# check whether the db is running or not
psql --host=my_psql_service --username=postgres --dbname=pgacid 

# CTRL+D to exit MAC

# to stop container
docker-compose stop;
