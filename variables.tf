variable "domain_name" {}

variable "domain_ttl" {
  default = 120
}

variable "domain_security" {
  default = "v=spf1 include:_spf.google.com ~all"
}
