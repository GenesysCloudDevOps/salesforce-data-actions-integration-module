variable "integration_name" {
    type        = string
    description = "The name of the Genesys Cloud integration."
}

variable "salesforce_creds_username" {
    type        = string
    description = "The username used for authentication."
}

variable "salesforce_creds_password" {
    type        = string
    description = "The password used for authentication."
    sensitive   = true
}

variable "salesforce_creds_security_token" {
    type        = string
    description = "The security token for the Salesforce account used for authentication."
    sensitive   = true
}

variable "salesforce_creds_login_url" {
    type        = string
    description = "The base Salesforce URL used to login to the organization."
    default     = "https://login.salesforce.com"
}