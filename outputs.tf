output "batch_batch_task_environments_id" {
  description = "Map of id values across all batch_batch_task_environments, keyed the same as var.batch_batch_task_environments except keys with no id are omitted"
  value       = { for k, v in oci_batch_batch_task_environment.batch_batch_task_environments : k => v.id if v.id != null && length(v.id) > 0 }
}
output "batch_batch_task_environments_compartment_id" {
  description = "Map of compartment_id values across all batch_batch_task_environments, keyed the same as var.batch_batch_task_environments except keys with no compartment_id are omitted"
  value       = { for k, v in oci_batch_batch_task_environment.batch_batch_task_environments : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "batch_batch_task_environments_defined_tags" {
  description = "Map of defined_tags values across all batch_batch_task_environments, keyed the same as var.batch_batch_task_environments except keys with no defined_tags are omitted"
  value       = { for k, v in oci_batch_batch_task_environment.batch_batch_task_environments : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "batch_batch_task_environments_description" {
  description = "Map of description values across all batch_batch_task_environments, keyed the same as var.batch_batch_task_environments except keys with no description are omitted"
  value       = { for k, v in oci_batch_batch_task_environment.batch_batch_task_environments : k => v.description if v.description != null && length(v.description) > 0 }
}
output "batch_batch_task_environments_display_name" {
  description = "Map of display_name values across all batch_batch_task_environments, keyed the same as var.batch_batch_task_environments except keys with no display_name are omitted"
  value       = { for k, v in oci_batch_batch_task_environment.batch_batch_task_environments : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "batch_batch_task_environments_freeform_tags" {
  description = "Map of freeform_tags values across all batch_batch_task_environments, keyed the same as var.batch_batch_task_environments except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_batch_batch_task_environment.batch_batch_task_environments : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "batch_batch_task_environments_image_url" {
  description = "Map of image_url values across all batch_batch_task_environments, keyed the same as var.batch_batch_task_environments except keys with no image_url are omitted"
  value       = { for k, v in oci_batch_batch_task_environment.batch_batch_task_environments : k => v.image_url if v.image_url != null && length(v.image_url) > 0 }
}
output "batch_batch_task_environments_security_context" {
  description = "Map of security_context values across all batch_batch_task_environments, keyed the same as var.batch_batch_task_environments except keys with no security_context are omitted"
  value       = { for k, v in oci_batch_batch_task_environment.batch_batch_task_environments : k => one(v.security_context) if v.security_context != null && length(v.security_context) > 0 }
}
output "batch_batch_task_environments_state" {
  description = "Map of state values across all batch_batch_task_environments, keyed the same as var.batch_batch_task_environments except keys with no state are omitted"
  value       = { for k, v in oci_batch_batch_task_environment.batch_batch_task_environments : k => v.state if v.state != null && length(v.state) > 0 }
}
output "batch_batch_task_environments_system_tags" {
  description = "Map of system_tags values across all batch_batch_task_environments, keyed the same as var.batch_batch_task_environments except keys with no system_tags are omitted"
  value       = { for k, v in oci_batch_batch_task_environment.batch_batch_task_environments : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "batch_batch_task_environments_time_created" {
  description = "Map of time_created values across all batch_batch_task_environments, keyed the same as var.batch_batch_task_environments except keys with no time_created are omitted"
  value       = { for k, v in oci_batch_batch_task_environment.batch_batch_task_environments : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "batch_batch_task_environments_time_updated" {
  description = "Map of time_updated values across all batch_batch_task_environments, keyed the same as var.batch_batch_task_environments except keys with no time_updated are omitted"
  value       = { for k, v in oci_batch_batch_task_environment.batch_batch_task_environments : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}
output "batch_batch_task_environments_volumes" {
  description = "Map of volumes values across all batch_batch_task_environments, keyed the same as var.batch_batch_task_environments except keys with no volumes are omitted"
  value       = { for k, v in oci_batch_batch_task_environment.batch_batch_task_environments : k => v.volumes if v.volumes != null && length(v.volumes) > 0 }
}
output "batch_batch_task_environments_working_directory" {
  description = "Map of working_directory values across all batch_batch_task_environments, keyed the same as var.batch_batch_task_environments except keys with no working_directory are omitted"
  value       = { for k, v in oci_batch_batch_task_environment.batch_batch_task_environments : k => v.working_directory if v.working_directory != null && length(v.working_directory) > 0 }
}

