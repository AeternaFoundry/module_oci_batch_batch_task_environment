resource "oci_batch_batch_task_environment" "batch_batch_task_environments" {
  for_each = var.batch_batch_task_environments

  compartment_id    = each.value.compartment_id
  image_url         = each.value.image_url
  defined_tags      = each.value.defined_tags
  description       = each.value.description
  display_name      = each.value.display_name
  freeform_tags     = each.value.freeform_tags
  working_directory = each.value.working_directory

  dynamic "security_context" {
    for_each = each.value.security_context != null ? [each.value.security_context] : []
    content {
      fs_group     = security_context.value.fs_group
      run_as_group = security_context.value.run_as_group
      run_as_user  = security_context.value.run_as_user
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }

  dynamic "volumes" {
    for_each = each.value.volumes != null ? each.value.volumes : []
    content {
      local_mount_directory_path = volumes.value.local_mount_directory_path
      mount_target_export_path   = volumes.value.mount_target_export_path
      mount_target_fqdn          = volumes.value.mount_target_fqdn
      name                       = volumes.value.name
      type                       = volumes.value.type
    }
  }
}

