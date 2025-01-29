# Running MicroDMS in docker

The base MicroDMS image is provided via dockerhub, but in order to have a running solution certain settings must be adapted to the current environment. In this project there is an example for
- building a customized MicroDMS image
- using this customized image in a docker-compose

After the container started up, the database have to be created. Please follow these steps.

Use the pgadmin in localhost:5410. You can log in with user@example.com/sa.

### Register the server
![](docs/01_register_server_1.png)
![](docs/02_register_server_1.png)

### Create a login
![](docs/02_create_login_1.png)
![](docs/02_create_login_2.png)
![](docs/02_create_login_3.png)

### Create the database
![](docs/03_create_database_1.png)
![](docs/03_create_database_2.png)

### Create the schema
![](docs/04_create_schema.png)



