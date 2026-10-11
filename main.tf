resource "google_oracle_database_odb_network" "oracle_database_odb_networks" {
  for_each = var.oracle_database_odb_networks

  location            = each.value.location
  network             = each.value.network
  odb_network_id      = each.value.odb_network_id
  deletion_policy     = each.value.deletion_policy
  deletion_protection = each.value.deletion_protection
  gcp_oracle_zone     = each.value.gcp_oracle_zone
  labels              = each.value.labels
  project             = each.value.project

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

