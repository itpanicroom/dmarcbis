# Azure DNS Deployment

Deploy a DMARC record to an existing Azure DNS Zone.

## Requirements

- Existing Azure DNS Zone
- DNS Zone Contributor permissions

## HTML Upgrade

- Added button "Copy Azure DNS Bicep"

## Deploy

```bash
az deployment group create \
  --resource-group rg-dns \
  --template-file dmarc-record.bicep \
  --parameters @parameters.example.json