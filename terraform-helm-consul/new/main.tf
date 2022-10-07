
data "oci_file_storage_mount_targets" "getMountData" {
    #Required
    availability_domain = var.mount_target_availability_domain
    compartment_id = var.compartment_id

}

data "oci_core_private_ips" "get-value" {
  subnet_id = oci_file_storage_mount_targets.getMountData.subnet_id

  filter {
    name = "opc-mt"
    values = [oci_file_storage_mount_targets.getMountData.private_ip_ids.0]
  }
}
