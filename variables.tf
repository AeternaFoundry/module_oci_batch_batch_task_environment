variable "batch_batch_task_environments" {
  description = <<EOT
Map of batch_batch_task_environments, attributes below
Required:
    - compartment_id
    - image_url
Optional:
    - defined_tags
    - description
    - display_name
    - freeform_tags
    - working_directory
    - security_context (block):
        - fs_group (optional)
        - run_as_group (optional)
        - run_as_user (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
    - volumes (block):
        - local_mount_directory_path (required)
        - mount_target_export_path (required)
        - mount_target_fqdn (required)
        - name (required)
        - type (required)
EOT

  type = map(object({
    compartment_id    = string
    image_url         = string
    defined_tags      = optional(map(string))
    description       = optional(string)
    display_name      = optional(string)
    freeform_tags     = optional(map(string))
    working_directory = optional(string)
    security_context = optional(object({
      fs_group     = optional(number)
      run_as_group = optional(number)
      run_as_user  = optional(number)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
    volumes = optional(list(object({
      local_mount_directory_path = string
      mount_target_export_path   = string
      mount_target_fqdn          = string
      name                       = string
      type                       = string
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.batch_batch_task_environments : (
        v.volumes == null || alltrue([for item in v.volumes : (contains([for v in ["NFS"] : lower(v)], lower(item.type)))])
      )
    ])
    error_message = "must be one of: \"NFS\""
  }
}

