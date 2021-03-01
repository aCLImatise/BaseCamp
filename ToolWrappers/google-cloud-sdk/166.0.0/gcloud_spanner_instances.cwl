class: CommandLineTool
id: gcloud_spanner_instances.cwl
inputs:
- id: in_add_i_am_policy_binding
  doc: Add an IAM policy binding to a Cloud Spanner instance.
  type: string
  inputBinding:
    position: 0
- id: in_create
  doc: Create a Cloud Spanner instance.
  type: string
  inputBinding:
    position: 1
- id: in_delete
  doc: Delete a Cloud Spanner instance.
  type: string
  inputBinding:
    position: 2
- id: in_describe
  doc: Describe a Cloud Spanner instance.
  type: string
  inputBinding:
    position: 3
- id: in_get_i_am_policy
  doc: Get the IAM policy for a Cloud Spanner instance.
  type: string
  inputBinding:
    position: 4
- id: in_list
  doc: List the Cloud Spanner instances in this project.
  type: string
  inputBinding:
    position: 5
- id: in_remove_i_am_policy_binding
  doc: Remove an IAM policy binding from a Cloud Spanner instance.
  type: string
  inputBinding:
    position: 6
- id: in_set_i_am_policy
  doc: Set the IAM policy for a Cloud Spanner instance.
  type: string
  inputBinding:
    position: 7
- id: in_update
  doc: Update a Cloud Spanner instance.
  type: string
  inputBinding:
    position: 8
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- gcloud
- spanner
- instances
