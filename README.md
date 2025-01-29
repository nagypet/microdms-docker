# Deploying the MicroDMS Service (Under construction)

MicroDMS provides a flexible and scalable deployment model, which covers the full range of possible usages from home-lab to multinational organizations.

The MicroDMS images are provided via dockerhub, but for the deployment scenarios certain customization might be necessary. In this project there are examples for
- building a customized MicroDMS image
- using this customized image in various environments

## Home-lab Deployment

![](docs/microdms_deployment-home-lab.drawio.png)

This is the simplest way of using the DMS software, recommended for trial or internal testing. The frontend app is embedded into the backend and will be served by the embedded Tomcat server. This deployment may provide good performance for 10-20 users. 

You need only one single docker container or the standalone version for Windows. 

Even in this case the backend supports HTTPS communication.

## Small Business Deployment
![](docs/microdms_deployment-small-business.drawio.png)

In this scenario the frontend is deployed separately on Nginx, which proxies the requests to the backend container. We can use the additional security of Nginx, therefore this is the recommended option for publishing the service on the internet. It may perform well for 50-100 users.

TLS will be terminated by Nginx.

## Scalable Deployment
![](docs/microdms_deployment-scalable.drawio.png)

This deployment is recommended for use in **Kubernetes** or **Openshift**, if the organization has many hundred users. The very same images can be used for building the pods. It provides **horizontal scalability** both on backend and frontend side. Only the hardware resources can limit the maximal user count.


## Building a customized MicroDMS image
Please see `./docker-build/build-docker-image.sh`.

## Using the customized image in a docker-compose
- Home-lab deployment: `./docker-compose/my-microdms`.
- Small business deployment: TODO
- Scalable deployment: TODO

## Starting the application

After the container started up, the database have to be created. Please follow these steps.

Use the pgadmin in http://localhost:5410. You can log in with user@example.com/sa.

### 1. Register the server
![](docs/01_register_server_1.png)
![](docs/02_register_server_1.png)

### 2. Create a login
![](docs/02_create_login_1.png)
![](docs/02_create_login_2.png)
![](docs/02_create_login_3.png)

### 3. Create the database
![](docs/03_create_database_1.png)
![](docs/03_create_database_2.png)

### 4. Create the schema
![](docs/04_create_schema.png)



