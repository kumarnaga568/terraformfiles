data "dynatrace_application" "Test" {
  name = "Example"
}

resource "dynatrace_application_detection_rule" "name" {
  application_identifier = data.dynatrace_application.Test.id
  filter_config {
    application_match_target = "DOMAIN" 
    application_match_type = "MATCHES" 
    pattern = "www.google.com" 
  }
}
