class: CommandLineTool
id: hca_auth_post_v1_user.cwl
inputs:
- id: in_user_id
  doc: Used to identify users, groups, and roles.
  type: string?
  inputBinding:
    prefix: --user-id
- id: in_groups
  doc: ''
  type: string?
  inputBinding:
    prefix: --groups
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- hca
- auth
- post-v1-user
