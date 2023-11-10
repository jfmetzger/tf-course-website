terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.41.0"
    }
  }
  backend "gcs" {
    bucket = "roidtc-projects-209-tf-state"
    prefix = "terraform/state"
  }
}


provider "google" {

  project = var.project_id

}
