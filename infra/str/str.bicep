targetScope = 'resourceGroup'

@description('Storage account name (3-24 lowercase letters and numbers)')
param storageAccountName string

@description('Location for the storage account (resource group location used by default)')
param location string

@description('SKU name')
param skuName string = 'Standard_LRS'

resource storageAccount 'Microsoft.Storage/storageAccounts@2022-09-01' = {
  name: storageAccountName
  location: location
  sku: {
    name: skuName
  }
  kind: 'StorageV2'
  properties: {
    accessTier: 'Hot'
  }
}

output storageAccountId string = storageAccount.id
output storageAccountNameOut string = storageAccount.name
