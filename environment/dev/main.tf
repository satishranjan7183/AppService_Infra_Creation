module "rg1module" {
    source = "../../module/1_rg"
    rg1varchild = var.rg1varparent
}

module "serviceplan1module" {
    source = "../../module/2_app_service_plan"
    serviceplan1varchild = var.serviceplan1varparent
    depends_on = [ module.rg1module ]
}

module "webappmodule" {
    source = "../../module/3_app_service"
    webappvarchild = var.webappvarparent
    depends_on = [module.rg1module, module.serviceplan1module]
    
}

module "acrmodule" {
    source = "../../module/4_acr_acrpull"
    acrvarchild = var.acrvarparent
    depends_on = [module.rg1module]
}

