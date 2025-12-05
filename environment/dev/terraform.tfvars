rg1varparent = {
    "dev-rg" = "East US"
}
serviceplan1varparent = {
    "dev-service-plan" = {
        location            = "East US"
        resource_group_name = "dev-rg"
    }
}

webappvarparent = {
    "dev-static-webapp" = {
        location                = "East US"
        resource_group_name     = "dev-rg"
        docker_image_name       = "coreui-static:1.0.0"
    }
}

acrvarparent = {
    "dev-acr" = {
        location                = "East US"
        resource_group_name     = "dev-rg"
        sku                     = "Basic"
        admin_enabled           = true
    }
}
