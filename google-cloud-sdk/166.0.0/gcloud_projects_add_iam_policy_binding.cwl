class: CommandLineTool
id: ../../../gcloud_projects_add_iam_policy_binding.cwl
inputs:
- id: in_role
  doc: ''
  type: string
  inputBinding:
    prefix: --role
- id: in_member
  doc: ''
  type: string
  inputBinding:
    prefix: --member
- id: in_project_id
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_optional
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_flags
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gcloud
- projects
- add-iam-policy-binding
