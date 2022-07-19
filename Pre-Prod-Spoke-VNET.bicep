@description('VNet name')
param vnetName string = 'VNET-CF-PP-DMZ-CC'

@description('VNet address prefix')
param vnetAddressPrefix string = '10.237.16.0/20'

@description('Subnet 1 Name')
param subnet1Name string = 'SNET-CF-PP-DMZ-CC-001'

@description('Subnet 1 Prefix')
param subnet1Prefix string = '10.237.16.0/24'


@description('Location for all resources.')
param location string = resourceGroup().location

resource vnet 'Microsoft.Network/virtualNetworks@2021-08-01' = {
  name: vnetName
  location: location
  properties: {
    addressSpace: {
      addressPrefixes: [
        vnetAddressPrefix
      ]
    }
    subnets: [
      {
        name: subnet1Name
        properties: {
          addressPrefix: subnet1Prefix
        }
      }
    ]
  }
}
