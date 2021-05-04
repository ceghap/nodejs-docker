# Getting started

- make sure you have [docker](https://www.docker.com/) installed on you computer

## Run with docker compose

### Development

`docker-compose -f docker-compose.yml -f docker-compose.dev.yml up -d`

### Production

`docker-compose -f docker-compose.yml -f docker-compose.prod.yml up -d`

## Destroy with docker compose

`docker-compose down -v`

## Run docker manually

### Build the image

`docker build -t node-app-image .`

### Run the container

#### On Windows CMD

`docker run -d -p 3000:3000 --env-file ./.env -v %cd%:/app:ro --name node-app node-app-image`

#### On Windows Powershell

`docker run -d -p 3000:3000 --env-file ./.env -v ${pwd}:/app:ro --name node-app node-app-image`

#### On Linux/MacOS

`docker run -d -p 3000:3000 --env-file ./.env -v $(pwd):/app:ro --name node-app node-app-image`
