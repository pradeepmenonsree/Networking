@description('VNet name')
param vnetName string = 'VNET-CF-LZ-P-CC'

@description('VNet address prefix')
param vnetAddressPrefix string = '10.234.0.0/20'

@description('Subnet 1 Name')
param subnet1Name string = 'SNET-CF-LZ-P-INTFW-MGMT-CC'

@description('Subnet 1 Prefix')
param subnet1Prefix string = '10.234.0.64/26'

@description('Subnet 2 Name')
param subnet2Name string = 'SNET-CF-LZ-P-INTFW-TRUST-CC'

@description('Subnet 2 Prefix')
param subnet2Prefix string = '10.234.2.0/26'

@description('Subnet 3 Name')
param subnet3Name string = 'SNET-CF-LZ-P-INTFW-MRZ-CC'

@description('Subnet 3 Prefix')
param subnet3Prefix string = '10.234.2.64/26'

@description('Subnet 4 Name')
param subnet4Name string = 'SNET-CF-LZ-P-INTFW-RZ-CC'

@description('Subnet 4 Prefix')
param subnet4Prefix string = '10.234.2.128/26'


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
      {
        name: subnet2Name
        properties: {
          addressPrefix: subnet2Prefix
        }
      }
      {
        name: subnet3Name
        properties: {
          addressPrefix: subnet3Prefix
        }
      }
      {
        name: subnet4Name
        properties: {
          addressPrefix: subnet4Prefix
        }
      }
    ]
  }
}
