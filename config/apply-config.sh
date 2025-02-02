curl --location 'http://localhost:8489/api/spvitamin/authenticate' \
--header 'Authorization: Basic YWRtaW46MW5uMGRPeA=='

curl --location 'http://localhost:8489/api/config' \
--header 'Authorization: Bearer <put here the jwt>' \
--form 'file=@"microdms-config-docker.yaml"'
