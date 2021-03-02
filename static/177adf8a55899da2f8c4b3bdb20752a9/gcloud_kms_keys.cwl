class: CommandLineTool
id: gcloud_kms_keys.cwl
inputs:
- id: in_keyring
  doc: The containing keyring.
  type: string?
  inputBinding:
    prefix: --keyring
- id: in_location
  doc: The location of the requested resource.
  type: string?
  inputBinding:
    prefix: --location
- id: in_operations_dot
  doc: FLAGS
  type: string
  inputBinding:
    position: 0
- id: in_versions
  doc: Create and manage versions.
  type: string
  inputBinding:
    position: 0
- id: in_add_i_am_policy_binding
  doc: Add IAM policy binding to a key.
  type: string
  inputBinding:
    position: 0
- id: in_create
  doc: Create a new key.
  type: string
  inputBinding:
    position: 1
- id: in_describe
  doc: Get metadata for a given key.
  type: string
  inputBinding:
    position: 2
- id: in_get_i_am_policy
  doc: Get the IAM policy for a key.
  type: string
  inputBinding:
    position: 3
- id: in_list
  doc: List the keys within a keyring.
  type: string
  inputBinding:
    position: 4
- id: in_remove_i_am_policy_binding
  doc: Remove an IAM policy binding from a key.
  type: string
  inputBinding:
    position: 5
- id: in_remove_rotation_schedule
  doc: Remove the rotation schedule for a key.
  type: string
  inputBinding:
    position: 6
- id: in_set_i_am_policy
  doc: Set the IAM policy for a key.
  type: string
  inputBinding:
    position: 7
- id: in_set_primary_version
  doc: Set the primary version of a key.
  type: string
  inputBinding:
    position: 8
- id: in_set_rotation_schedule
  doc: Update the rotation schedule for a key.
  type: string
  inputBinding:
    position: 9
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- gcloud
- kms
- keys
