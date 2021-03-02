class: CommandLineTool
id: gcloud_service_management_add_iam_policy_binding.cwl
inputs:
- id: in_role
  doc: ''
  type: string?
  inputBinding:
    prefix: --role
- id: in_member
  doc: ''
  type: string?
  inputBinding:
    prefix: --member
- id: in_service
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_optional
  doc: ''
  type: string?
  inputBinding:
    position: 1
- id: in_flags
  doc: ''
  type: string?
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- gcloud
- service-management
- add-iam-policy-binding
