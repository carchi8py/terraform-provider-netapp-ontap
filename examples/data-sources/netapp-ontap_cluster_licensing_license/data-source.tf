data "netapp-ontap_cluster_licensing_license_data_source" "cluster_licensing_license" {
  # required to know which system to interface with
  cx_profile_name = "cluster4"
  name = "snapmirror_sync"
}
