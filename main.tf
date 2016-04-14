# Adds google required MX records

resource "cloudflare_record" "mx1" {
    domain = "${var.domain_name}"
    name = "${var.domain_name}"
    value = "alt1.aspmx.l.google.com"
    type = "MX"
    priority = 5
}

resource "cloudflare_record" "mx2" {
    domain = "${var.domain_name}"
    name = "${var.domain_name}"
    value = "alt2.aspmx.l.google.com"
    type = "MX"
    priority = "5"
}

resource "cloudflare_record" "mx3" {
    domain = "${var.domain_name}"
    name = "${var.domain_name}"
    value = "alt3.aspmx.l.google.com"
    type = "MX"
    priority = "10"
}

resource "cloudflare_record" "mx4" {
    domain = "${var.domain_name}"
    name = "${var.domain_name}"
    value = "alt4.aspmx.l.google.com"
    type = "MX"
    priority = "10"
}

resource "cloudflare_record" "mx5" {
    domain = "${var.domain_name}"
    name = "${var.domain_name}"
    value = "aspmx.l.google.com"
    type = "MX"
    priority = "1"
}

resource "cloudflare_record" "email_spf" {
    domain = "${var.domain_name}"
    name = "${var.domain_name}"
    value = "${var.domain_security}"
    type = "SPF"
    ttl = "${var.domain_ttl}"
}

resource "cloudflare_record" "email_txt" {
    domain = "${var.domain_name}"
    name = "${var.domain_name}"
    value = "${var.domain_security}"
    type = "TXT"
    ttl = "${var.domain_ttl}"
}

# If you want to have custom URL for Google services
#   https://admin.google.com/YOUR_DOMAIN_HERE/AdminHome#CompanyProfile:flyout=customUrl

resource "cloudflare_record" "custom_calendar_url" {
    domain = "${var.domain_name}"
    name = "${var.custom_calendar_url}"
    value = "ghs.google.com"
    type = "CNAME"
    ttl = "${var.domain_ttl}"
}

resource "cloudflare_record" "custom_gmail_url" {
    domain = "${var.domain_name}"
    name = "${var.custom_gmail_url}"
    value = "ghs.google.com"
    type = "CNAME"
    ttl = "${var.domain_ttl}"
}

resource "cloudflare_record" "custom_drive_url" {
    domain = "${var.domain_name}"
    name = "${var.custom_drive_url}"
    value = "ghs.google.com"
    type = "CNAME"
    ttl = "${var.domain_ttl}"
}

resource "cloudflare_record" "custom_sites_url" {
    domain = "${var.domain_name}"
    name = "${var.custom_sites_url}"
    value = "ghs.google.com"
    type = "CNAME"
    ttl = "${var.domain_ttl}"
}
