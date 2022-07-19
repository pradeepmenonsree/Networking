@allowed([
  'hub'
  'spoke1'
  'spoke2'
])
param vNetType string

module hub './LandingZone-VNET.bicep' = if (vNetType == 'hub') {
  name: 'LandingZone-VNET'
  params: {
     //
  }
}

module spoke1 './Production-Spoke-VNET.bicep' = if (vNetType == 'spoke1') {
  name: 'Production-Spoke-VNET'
  params: {
    // override defaults here
  }
}

module spoke2 './Pre-Prod-Spoke-VNET.bicep' = if (vNetType == 'spoke2') {
  name: 'Pre-Prod-Spoke-VNET'
  params: {
    // override defaults here
  }
}
