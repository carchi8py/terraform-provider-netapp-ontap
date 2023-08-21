---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "ontap_cluster_schedules_data_source Data Source - terraform-provider-netapp-ontap"
subcategory: "cluster"
description: |-
  Retrieves list of Cluster Schedules configuration of SVMs.
---

# Data Source cluster_schedules

Retrieves list of Cluster Schedules configuration of SVMs.

## Example Usage
```terraform
data "netapp-ontap_cluster_schedules_data_source" "cluster_schedules" {
  # required to know which system to interface with
  cx_profile_name = "cluster4"
  filter = {
    type = "interval"
  }
}
```


<!-- schema generated by tfplugindocs -->
## Schema

### Required

- `cx_profile_name` (String) Connection profile name

### Optional

- `filter` (Attributes) (see [below for nested schema](#nestedatt--filter))

### Read-Only

- `cluster_schedules` (Attributes List) Cluster Schedules data source (see [below for nested schema](#nestedatt--cluster_schedules))

<a id="nestedatt--filter"></a>
### Nested Schema for `filter`

Optional:

- `type` (String) Cluster schdeule type


<a id="nestedatt--cluster_schedules"></a>
### Nested Schema for `cluster_schedules`

Required:

- `cx_profile_name` (String) Connection profile name

Read-Only:

- `cron` (Attributes) (see [below for nested schema](#nestedatt--cluster_schedules--cron))
- `interval` (String) Cluster schedule interval
- `name` (String) ClusterSchedule name
- `scope` (String) Cluster schedule scope
- `type` (String) Cluster schdeule type
- `uuid` (String) Cluster schedule UUID

<a id="nestedatt--cluster_schedules--cron"></a>
### Nested Schema for `cluster_schedules.cron`

Read-Only:

- `days` (List of Number) List of cluster schedule days
- `hours` (List of Number) List of cluster schedule hours
- `minutes` (List of Number) List of cluster schedule minutes
- `months` (List of Number) List of cluster schedule months
- `weekdays` (List of Number) List of cluster schedule weekdays

