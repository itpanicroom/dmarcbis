param dnsZoneName string

@description('DMARC TXT record value')
param dmarcRecord string

@description('TTL')
param ttl int = 3600

resource zone 'Microsoft.Network/dnsZones@2018-05-01' existing = {
  name: dnsZoneName
}

resource dmarcRecordTxt 'Microsoft.Network/dnsZones/TXT@2018-05-01' = {
  name: '${zone.name}/_dmarc'

  properties: {
    TTL: ttl

    TXTRecords: [
      {
        value: [
          dmarcRecord
        ]
      }
    ]
  }
}