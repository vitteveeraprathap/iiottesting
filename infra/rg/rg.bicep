targetScope = 'subscription'

@description('Name of the resource group to create')
param rgName string

@description('Location for the resource group')
param location string = 'eastus'

resource rg 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: rgName
  location: location
  properties: {}
}

output resourceGroupName string = rg.name
output resourceGroupLocation string = rg.location
