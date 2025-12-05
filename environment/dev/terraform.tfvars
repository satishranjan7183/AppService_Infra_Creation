rg1varparent = {
    "prod-rg" = "Canada Central"
}
serviceplan1varparent = {
    "dev-service-plan" = {
        location            = "Canada Central"
        resource_group_name = "prod-rg"
    }
}

webappvarparent = {
    "dev-static-webapp" = {
        location                = "Canada Central"
        resource_group_name     = "prod-rg"
        appserviceplanname  = "prod-service-plan"
    }
}
