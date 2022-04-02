> &&&&&&&&&&&&&& Steps To Run &&&&&&&&&&&&&&

1- Run the postgres Docker container with the following command: (goto Action#01)
2- Inorder to test prisma crud use terminal command
   terminal :-  npx ts-node crud.ts

> &&&&&&&&&&&&&& Action#01 -- DOCKER Commands &&&&&&&&&&&&&&
<!-- Read Me -->
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

> &&&&&&&&&&&&&& PRISMA Commands &&&&&&&&&&&&&&

Started without any schema 
created new datamodel in prisma then the mapping is being applied to the database
See the getting started guide for more details
https://www.prisma.io/docs/getting-started

# Apply prisma updated schema .sql  command
pnpm prisma migrate dev --name init 
prisma migrate dev --name added_profiler

> &&&&&&&&&&&&&& Errors Faced &&&&&&&&&&&&&&

Error is ::
Invalid package name ".pnpm": name cannot start with a period
Error: Command failed with exit code 1: npm install @prisma/client@3.11.1

Solution is ::
https://github.com/prisma/prisma/issues/5340 (works)
https://github.com/pnpm/pnpm/issues/3374