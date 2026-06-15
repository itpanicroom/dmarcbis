# Azure DNS Deployment

Deploy a DMARC record to an existing Azure DNS Zone using Bicep.

## Requirements

* Existing Azure DNS Zone
* DNS Zone Contributor permissions
* Azure CLI installed

## Files

| File                    | Purpose                             |
| ----------------------- | ----------------------------------- |
| dmarc-record.bicep      | Azure DNS DMARC deployment template |
| parameters.example.json | Example deployment parameters       |

## Deploy

```bash
az deployment group create \
  --resource-group rg-dns \
  --template-file dmarc-record.bicep \
  --parameters @parameters.example.json
```

## DMARCbis Integration

The DMARCbis Builder can generate a tailored Azure DNS Bicep template based on the selected DMARC policy and reporting configuration.

This deployment module intentionally focuses on Infrastructure-as-Code generation rather than direct DNS modification.
