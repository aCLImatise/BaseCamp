class: CommandLineTool
id: gcloud_ml_engine_models.cwl
inputs:
- id: in_add_i_am_policy_binding
  doc: Add IAM policy binding to a model.
  type: string
  inputBinding:
    position: 0
- id: in_create
  doc: Create a new Cloud ML Engine model.
  type: string
  inputBinding:
    position: 1
- id: in_delete
  doc: Delete an existing Cloud ML Engine model.
  type: string
  inputBinding:
    position: 2
- id: in_describe
  doc: Describe an existing Cloud ML Engine model.
  type: string
  inputBinding:
    position: 3
- id: in_get_i_am_policy
  doc: Get the IAM policy for a model.
  type: string
  inputBinding:
    position: 4
- id: in_list
  doc: List existing Cloud ML Engine models.
  type: string
  inputBinding:
    position: 5
- id: in_remove_i_am_policy_binding
  doc: Remove a policy binding from a model.
  type: string
  inputBinding:
    position: 6
- id: in_set_i_am_policy
  doc: Set the IAM policy for a model.
  type: string
  inputBinding:
    position: 7
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gcloud
- ml-engine
- models
