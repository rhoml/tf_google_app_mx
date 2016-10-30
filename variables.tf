variable "domain_name" {}

variable "domain_ttl" {
  default = 120
}

variable "domain_security" {
  default = "v=spf1 include:_spf.google.com ~all"
}

variable "google_authenticity_dns_check" {}

# If you want to have custom URL for Google services
#   https://admin.google.com/YOUR_DOMAIN_HERE/AdminHome#CompanyProfile:flyout=customUrl
variable "custom_calendar_url" {
  default = "calendar"
}

variable "custom_gmail_url" {
  default = "mail"
}

variable "custom_drive_url" {
  default = "drive"
}

variable "custom_sites_url" {
  default = "sites"
}
