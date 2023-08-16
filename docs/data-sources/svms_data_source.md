---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "netapp-ontap_svms_data_source Data Source - terraform-provider-netapp-ontap"
subcategory: "svms"
description: |-
  Retrieves the configuration of SVMs.
---

# Data Source svms

Retrieves the configuration of SVMs.

## Example Usage
```terraform
data "netapp-ontap_svms_data_source" "svms" {
  # required to know which system to interface with
  cx_profile_name = "cluster4"
  filter = {
    name = "ansibleSVM"
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

- `svms` (Attributes List) (see [below for nested schema](#nestedatt--svms))

<a id="nestedatt--filter"></a>
### Nested Schema for `filter`

Optional:

- `name` (String) Svm name


<a id="nestedatt--svms"></a>
### Nested Schema for `svms`

Required:

- `cx_profile_name` (String) Connection profile name
- `name` (String) Svm name

Read-Only:

- `aggregates` (List of String) Aggregates to be assigned use for svm
- `comment` (String) Comment for svm to be created
- `id` (String)
- `ipspace` (String) The name of the ipspace to manage
- `language` (String) Language to use for svm
- `max_volumes` (String) Maximum number of volumes that can be created on the svm. Expects an integer or unlimited
- `snapshot_policy` (String) The name of the snapshot policy to manage
- `subtype` (String) The subtype for svm to be created
- `uuid` (String) svm identifier

