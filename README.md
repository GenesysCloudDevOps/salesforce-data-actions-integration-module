Sets up a Salesforce integration using CX as Code and Terraform remote modules

## Usage

Shown below is an example of how to configure the remote module.

```hcl
module "integration" {
    source = "git::https://github.com/GenesysCloudDevOps/salesforce-data-actions-integration-module.git?ref=v1.0.0"

    integration_name                = "Salesforce Data Actions Integration Name"
    salesforce_creds_username       = "<username>"
    salesforce_creds_password       = "<password>"
    salesforce_creds_security_token = "<security token>"
}
```

## Requirements

| Name | Version |
|------|---------|
| <a name="provider_terraform"></a>[terraform](https://www.terraform.io/) | >= 1.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_genesyscloud"></a> [genesyscloud](https://registry.terraform.io/providers/MyPureCloud/genesyscloud/latest) | >= 1.0|

## Inputs

| Name | Description | Type | Required |
|------|-------------|------|:--------:|
| <a name="integration_name"></a> [integration_name](#integration\_\name)  | The name for the data actions integration. | `string` | yes |
| <a name="salesforce_creds_username"></a> [salesforce_creds_username](#integration\_\creds\_\client\_\id)  | The username used for authentication. | `string` | yes |
| <a name="salesforce_creds_password"></a> [salesforce_creds_password](#integration\_\creds\_\client\_\secret)  | The password used for authentication. | `string` | yes |
| <a name="salesforce_creds_security_token"></a> [salesforce_creds_security_token](#integration\_\creds\_\client\_\secret)  | The security token for the Salesforce account used for authentication. | `string` | yes |
| <a name="salesforce_creds_login_url"></a> [salesforce_creds_login_url](#integration\_\creds\_\client\_\secret)  | The base Salesforce URL used to login to the organization. | `string` | no |

## Outputs

| Name | Description | Type | 
|------|-------------|------|
| <a name="integration_id"></a> [integration_id](#integration\_\id)  | The ID of the integration. | `string` |
| <a name="integration_name"></a> [integration_name](#integration\_\name)  | The name of the integration. | `string` | 