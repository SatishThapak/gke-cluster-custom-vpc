variable "project" {
  description = "The ID of the Google Cloud project where resources will be created."
  type        = string
}

variable "region" {
  description = "The GCP region where resources will be deployed (e.g., us-central1)."
  type        = string
}

variable "service_name" {
  description = "A name used to identify the service or application."
  type        = string
}

variable "roles" {
  description = "A list of IAM roles to assign to the service account."
  type        = list(string)
}

variable "account_id" {
  description = "Service account ID, used to create a new service account or reference an existing one."
  type        = string
}