data "netapp-ontap_protocols_san_igroups_data_source" "protocols_san_igroups" {
  # required to know which system to interface with
  cx_profile_name = "cluster1"
  # filter = {}
}
