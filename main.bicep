param location string = 'eastus'
param storageName string

resource rg 'Microsoft.Resources/resourceGroups@2022-09-01' = {
  name: 'rg-dev'
  location: location

  tags: {
  environment: 'dev'
  owner: 'cloud-team'
}

}

resource storage 'Microsoft.Storage/storageAccounts@2023-01-01' = {
  name: storageName
  location: location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  tags: {
  environment: 'dev'
  owner: 'cloudEngineer'
}

}
