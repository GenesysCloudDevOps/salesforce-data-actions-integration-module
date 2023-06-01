resource "genesyscloud_integration" "integration" {
    integration_type = "salesforce-datadip"
    intended_state   = "DISABLED"

    config {
        name  = var.integration_name
        credentials = {
            salesforceUser = genesyscloud_integration_credential.credential.id
        }
    }
}

resource "genesyscloud_integration_credential" "credential" {
    name                 = "Salesforce Data Actions Credential"
    credential_type_name = "salesforce"

    fields = {
        username      = var.salesforce_creds_username
        password      = var.salesforce_creds_password
        securityToken = var.salesforce_creds_security_token
        loginUrl      = var.salesforce_creds_login_url
    }
}