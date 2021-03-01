class: CommandLineTool
id: hca_auth_put_v1_group_policy.cwl
inputs:
- id: in_group_id
  doc: The name of the group.
  type: string?
  inputBinding:
    prefix: --group-id
- id: in_policy
  doc: ''
  type: string?
  inputBinding:
    prefix: --policy
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- hca
- auth
- put-v1-group-policy
