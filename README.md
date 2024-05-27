# server-compose
A docker compose file that launchs a playground of web servers and databases to play it.

Useful to test vulnerabilities like SQL Injections.


## Launch
```
docker-compose up -d
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
```

## Databases
Databases available to test:
- [x] mysql
- [] PostgresSQL
- [] OracleDB
- [] Microsoft SQL

## Disclosure
- Docker is using simple passwords to start containers. It is not a good idea to run this in an unsafe environment.