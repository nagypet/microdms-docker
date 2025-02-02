First login with admin/admin:
```
curl --location 'http://localhost:8489/api/spvitamin/authenticate' \
--header 'Authorization: Basic YWRtaW46YWRtaW4='
```

Then replace the bearer token and upload the system configuration:
```
curl --location 'http://localhost:8489/api/config' \
--header 'Authorization: Bearer <put here the bearer token from the jwt field>' \
--form 'file=@"microdms-config-docker.yaml"'
```
