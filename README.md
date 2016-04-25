# tf_google_app_mx

[![Build Status](https://travis-ci.org/rhoml/tf_google_apps.svg?branch=master)](https://travis-ci.org/rhoml/tf_google_apps)
[![Tag Version](https://img.shields.io/github/tag/rhoml/tf_google_apps.svg)](https://github.com/rhoml/tf_google_apps/tags)
[![License](http://img.shields.io/:license-gpl3-blue.svg)](http://www.gnu.org/licenses/gpl-3.0.html)

Terraform module to manage Gmail DNS records

## Usage

```
# Add all required records for Google Apps Email
module "tf_google_apps_domain_com" {
  source = "github.com/rhoml/tf_google_apps"
  domain_name = "domain.com"
  domain_ttl = 120
  domain_security = "v=spf1 include:_spf.google.com ~all"
}
```
