resource "cloudflare_record" "google_domain_cname" {
    domain = "${var.domain_name}"
    name = "mail"
    value = "ghs.google.com"
    type = "CNAME"
    ttl = "${var.domain_ttl}"
}

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
