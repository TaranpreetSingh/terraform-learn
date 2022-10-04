###@ to get export path

data "oci_file_storage_export_sets" "test_export_sets" {
    #Required
    availability_domain = var.export_set_availability_domain
    compartment_id = var.compartment_id


}


data oci_core_private_ips tf-demo15-mt1 {
  subnet_id = oci_file_storage_mount_targets.tf-demo15-mt1.subnet_id

  filter {
    name = "opc-mt"
    values = [oci_file_storage_mount_targets.tf-demo15-mt1.private_ip_ids.0]
  }
}

locals {
  mt1_ip_address = lookup(data.oci_core_private_ips.tf-demo15-mt1.private_ips[0], "ip_address")
}

##### to get IP

data "oci_file_storage_mount_targets" "tf-demo15-mt1" {
    #Required
    availability_domain = var.mount_target_availability_domain
    compartment_id = var.compartment_id

}

data oci_core_private_ips tf-demo15-mt1 {
  subnet_id = oci_file_storage_mount_targets.tf-demo15-mt1.subnet_id

  filter {
    name = "opc-mt"
    values = [oci_file_storage_mount_targets.tf-demo15-mt1.private_ip_ids.0]
  }
}

locals {
  mt1_ip_address = lookup(data.oci_core_private_ips.tf-demo15-mt1.private_ips[0], "ip_address")
}