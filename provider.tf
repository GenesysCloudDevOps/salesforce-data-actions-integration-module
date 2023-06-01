terraform {
    required_providers {
        genesyscloud = {
            source = "mypurecloud/genesyscloud"
            version = "1.15.0"
        }
    }
}

provider "genesyscloud" {
    oauthclient_id     = "7de3af06-c0b3-4f9b-af45-72f4a14037cc"
    oauthclient_secret = "qLh-825gtjPrIY2kcWKAkmlaSgi6Z1Ws2BAyixWbTrs"
    aws_region         = "us-east-1"
}
