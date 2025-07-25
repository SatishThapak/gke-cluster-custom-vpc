variable "project" { }


variable "region" {
  
}
variable "service_name" { }
variable "roles" {
  description = "List of IAM roles to bind to the service account"
  type        = list(string)
}
variable "account_id" {
  description = "Service account ID"
  type        = string
}

