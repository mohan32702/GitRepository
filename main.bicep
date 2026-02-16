param location string = 'eastus'
param storageName string

resource rg 'Microsoft.Resources/resourceGroups@2022-09-01' = {
  name: 'rg-dev'
  location: location
<<<<<<< HEAD
=======

>>>>>>> 1566fcaa80e528c9d86e93fc1c413487f8e97fa5
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
<<<<<<< HEAD
  owner: 'cloud-team'
=======
  owner: 'cloudEngineer'
>>>>>>> 1566fcaa80e528c9d86e93fc1c413487f8e97fa5
}

}
