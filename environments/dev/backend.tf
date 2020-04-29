terraform {
    backend "gcs" {
        bucket = "gs-infrastructure-dev"
        prefix = "terraform/state"
        credentials = "../../../google-credentials/terraform-admin.json"
    }
}