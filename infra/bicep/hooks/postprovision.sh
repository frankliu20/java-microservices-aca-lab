#!/usr/bin/env bash

azd env set AZURE_RESOURCE_GROUP $resourceGroupName

# refresh service connection, via customers-service
az containerapp connection create mysql-flexible --connection $sqlConnectName --source-id $customersServiceId --target-id $sqlDatabaseId --client-type springBoot \
  --user-identity client-id=$appUserIdentityClientId subs-id=$subscriptionId mysql-identity-id=$sqlAdminIdentityId -c $customersServiceName -y