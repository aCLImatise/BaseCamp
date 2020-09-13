class: CommandLineTool
id: ../../../hca_auth_post_v1_group.cwl
inputs:
- id: in_group_id
  doc: Used to identify users, groups, and roles.
  type: string
  inputBinding:
    prefix: --group-id
- id: in_policy
  doc: ''
  type: string
  inputBinding:
    prefix: --policy
- id: in_roles
  doc: ''
  type: string
  inputBinding:
    prefix: --roles
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hca
- auth
- post-v1-group
