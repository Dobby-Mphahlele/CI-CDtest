targetScope = 'subscription'

param rgName string

resource rg 'Microsoft.Resources/resourceGroups@2025-03-01' = {
  name: rgName
  location: 'southafricanorth'
  tags: {
    environment: 'dev'
    owner: 'Dobby'
  }
}


/*
To deploy this Bicep file, use the Azure CLI:

az deployment sub create --location southafricanorth --template-file rg.bicep --parameters rgName=<your-resource-group-name>

Replace <your-resource-group-name> with your desired resource group name.
*/

