# stw-tf-bastion

Terraform module that generates an Azure Bastion subnet and an Azure Bastion host.

## Usage

```hcl
module "bastion" {
  source = "git::https://github.com/yasinwaad/stw-tf-bastion.git?ref=v1.0.0"

  project_name        = "example"
  environment         = "dev"
  owner               = "Yasin"
  resource_group_name = "rg-example-dev-southafricanorth"
  vnet_name           = "vnet-example-dev-southafricanorth"
  public_ip_id        = "<public ip id from the public ip module>"
}
```

## Inputs

| Name | Description | Type | Default |
|------|-------------|------|---------|
| project_name | Project name used in resource names | string | n/a |
| environment | Environment name, e.g. prod | string | n/a |
| owner | Owner tag value | string | n/a |
| resource_group_name | Name of the existing resource group | string |