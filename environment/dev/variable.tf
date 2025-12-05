variable "rg1varparent" {
  type        = map(any)
}

variable "serviceplan1varparent" {
  type    = map(any)
}

# These images must already be pushed to ACR
variable "webappvarparent" {
  type    = map(any)
  default = "coreui-static:1.0.0"
}

variable "acrvarparent" {
  type        = map(any)
}
