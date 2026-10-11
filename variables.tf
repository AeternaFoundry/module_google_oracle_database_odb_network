variable "oracle_database_odb_networks" {
  description = <<EOT
Map of oracle_database_odb_networks, attributes below
Required:
    - location
    - network
    - odb_network_id
Optional:
    - deletion_policy
    - deletion_protection
    - gcp_oracle_zone
    - labels
    - project
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    location            = string
    network             = string
    odb_network_id      = string
    deletion_policy     = optional(string)
    deletion_protection = optional(bool)
    gcp_oracle_zone     = optional(string)
    labels              = optional(map(string))
    project             = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

