class: CommandLineTool
id: ../../../gcloud_organizations_set_iam_policy.cwl
inputs:
- id: in_organization_id
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_policy_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_optional
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_flags
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gcloud
- organizations
- set-iam-policy
