/*
 * Copyright 2019 Google LLC. This software is provided as-is, without warranty
 * or representation for any use or purpose. Your use of it is subject to your 
 * agreement with Google.  
 */
variable "gcp_billing_id" {
  description = "The billing id to use with projects."
}

variable "gcp_org_id" {
  description = "The ID of the GCP organization where the projects will be created"
}

variable "folder_id" {
  description = "The ID of the folder where the projects will be created"
}

variable "shared_services_project" {
  description = "The ID of the shared services project"
  default     = "shsvc-poc-ssv"
}

variable "application_project" {
  description = "The ID of the sample application project"
  default     = "shsvc-poc-app"
}

variable "project_services" {
  description = "The GCP services required to in the projects."
  type        = "list"
  default = [
    "compute.googleapis.com",
    "logging.googleapis.com",
    "dns.googleapis.com",
    "pubsub.googleapis.com",
    "iap.googleapis.com",
    "cloudfunctions.googleapis.com",
  ]
}

variable "gcp_credentials_path" {
  description = "Path to the json key of the service account used to run this configuration."
}

variable "random_suffix" {
  description = "Add a random suffix to some resources to make it simpler to run tests."
  default     = true
}
