# MicroDMS Service

## Releases
### 1.6.0 - 2025-03-17
- Java21
- SpringBoot 3.4.3

### 1.5.0 - 2025-03-16
- Autocomplete text keywords
- Storage subsystem refactored: 
  - storageid is stored in the `DocumentHistoryEntity`
  - folder structure changed from `storage/volume` to `volume/storage`
- Performance optimization: lazy autocomplete in the SearchCriteriaComponentController

### 1.4.0 - 2025-03-08
- Authentication with OAuth providers

### 1.3.0 - 2025-02-10
- Sample configuration extended with AD authentication

### 1.2.0 - 2025-02-09
- System config is validated and can be updated

### 1.1.0 - 2025-02-06
- Bug fixed in the DocumentStorageServiceImpl
- File encryption/decryption

### 1.0.0 - 2025-01-31
- First version with basic functionality

## Deploying the MicroDMS Service

MicroDMS provides a flexible and scalable deployment model, which covers the full range of possible usages from home-lab to multinational organizations.

The MicroDMS images are provided via dockerhub, but for the deployment scenarios certain customization might be necessary. In this project there are examples for
- building a customized MicroDMS image
- using this customized image in various environments

## Home-lab Deployment

![](docs/microdms_deployment-home-lab.drawio.png)

This is the simplest way of using the DMS software, recommended for trial or internal testing. The frontend app is embedded into the backend and will be served by the embedded Tomcat server. This deployment may provide good performance for 10-20 users. 

You need only one single docker container or the standalone version for Windows. 

Even in this case the backend supports HTTPS communication.

docker-compose: [docker-compose.yml](./docker-compose/my-microdms/docker-compose.yml).

Starting up the containers:
```
docker-compose up -d
```

## Small Business Deployment
![](docs/microdms_deployment-small-business.drawio.png)

In this scenario the frontend is deployed separately on Nginx, which proxies the requests to the backend container. We can use the additional security of Nginx, therefore this is the recommended option for publishing the service on the internet. It may perform well for 50-100 users.

TLS will be terminated by Nginx.

docker-compose: [sb.yml](./docker-compose/my-microdms/sb.yml).

Starting up the containers:
```
docker-compose -f sb.yml up -d
```

A working example: https://demo.microdms.com 

## Scalable Deployment
![](docs/microdms_deployment-scalable.drawio.png)

This deployment is recommended for use in **Kubernetes** or **Openshift**, if the organization has many hundred users. The very same images can be used for building the pods. It provides **horizontal scalability** both on backend and frontend side. Only the hardware resources can limit the maximal user count.

More details coming soon.

## Building customized images

In the `/image` folder there are prepared build files for docker-compose and k8s deployments. For docker-compose only the backend must be built, but for k8s a special app image must be built too. 

## Deployment onto Kubernetes

Please see the `/k8s` folder for sample manifest files.

MicroDMS running in Kubernetes with 2 backend replicas and 1 frontend replica.
![](docs/05_k9s.png)

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



