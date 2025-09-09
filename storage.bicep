param RGLocation string = 'WestEurope'

var saname = 'sa${uniqueString(resourceGroup().id)}'

resource mysa 'Microsoft.Storage/storageAccounts@2021-09-01' = {
  name: saname
  location: RGLocation
  sku: {
    name:  'Standard_LRS'
  }
  kind:  'StorageV2'
  properties: {
     accessTier: 'Hot'
  }
}

output mysaname string = mysa.name
