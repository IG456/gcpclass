terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.26.0"
    }
  }
}

provider "google" {
  # Configuration options
project = "project12-420602"
region = "us-central1"
zone = "us-central1-a"
credentials = "project12-420602-e35bb0c671fe.json"

}

resource "google_storage_bucket" "static-site" {
  name          = "project12first"
  location      = "US"
  force_destroy = true

  uniform_bucket_level_access = true

  website {
    main_page_suffix = "index.html"
    not_found_page   = "404.html"
  }
  
}