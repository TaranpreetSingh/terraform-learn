output "mount_target_ip" {
  description = "IP of the mount target"
  value       = data.oci_core_private_ips.getMountData.private_ips[0]
}

output "mount_target_path" {
  description = "Mount target path detail"
  value       = data.oci_file_storage_mount_targets.getMountData.path
}
