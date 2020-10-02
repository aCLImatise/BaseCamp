class: CommandLineTool
id: gcloud_kms_keyrings.cwl
inputs:
- id: in_location
  doc: The location of the requested resource.
  type: string
  inputBinding:
    prefix: --location
- id: in_add_i_am_policy_binding
  doc: Add IAM policy binding to a keyring.
  type: string
  inputBinding:
    position: 0
- id: in_create
  doc: Create a new keyring.
  type: string
  inputBinding:
    position: 1
- id: in_describe
  doc: Get metadata for a keyring.
  type: string
  inputBinding:
    position: 2
- id: in_get_i_am_policy
  doc: Get the IAM policy for a keyring.
  type: string
  inputBinding:
    position: 3
- id: in_list
  doc: List keyrings within a location.
  type: string
  inputBinding:
    position: 4
- id: in_remove_i_am_policy_binding
  doc: Remove a policy binding from a keyring.
  type: string
  inputBinding:
    position: 5
- id: in_set_i_am_policy
  doc: Set the IAM policy for a keyring.
  type: string
  inputBinding:
    position: 6
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gcloud
- kms
- keyrings
