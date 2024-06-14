# server-compose
A docker compose file that launchs a playground of web servers and databases to play it.

Useful to test vulnerabilities like SQL Injections.


## Launch
- Web servers and databases are "separated" by Docker profiles. This prevents that you have to download every image within the Docker compose file to start using one service.
```bash
# For databases
docker-compose up --profile databases -d

# For web servers
docker-compose up --profile webservers -d
```

## Exit
```
docker-compose down -v
```

## Usage
```bash
# The docker compose file is mapping the internal ports to your host, so pay attention to that. If you don't want that you can delete the line from the docker-compose.yml file.

## mysql (exposed on localhost:3306)
mysql -h 127.0.0.1 -u root -proot

## postgres (exposed on localhost:5432)
psql -h 127.0.0.1 -U postgres

## Microsoft SQL Server (access via the container, but the port is exposed either way on 1433)
sudo docker exec -it mssqlContainer /bin/bash
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P StrongPassword123!
```

## Databases
Databases available to test:
- [x] mysql
- [x] PostgresSQL
- ~~[ ] OracleDB (Due to the licenses and restrictions this is not gonna be implemented)~~
- [x] Microsoft SQL

## Web servers
Web servers available to test:
- [ ] Wordpress

## Disclosure
- Docker is using simple passwords to start containers. It is not a good idea to run this in an unsafe environment.

## TODO
- [ ] Implement a script to verify if the Docker images are occupying more then 50GB of disk space. If this happens a warning should be popped before composing up.