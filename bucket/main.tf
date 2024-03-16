terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "3.5.0"
    }
  }
}
provider "google" {
credentials = file(var.credentials_file)
  project = var.project
   // region = "var.location"
 // region  = var.region
  //zone    = var.zone
}
resource "google_storage_bucket" "default" {
    //count = 1
    name = "monistfbucket"
    location = "us-central1"
    storage_class = "REGIONAL"

    labels = {
        name = "monistfbucket"
        location = "us-central1"
    }

    versioning {
        enabled = true
    }

}
