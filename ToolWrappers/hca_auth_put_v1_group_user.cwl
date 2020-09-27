class: CommandLineTool
id: hca_auth_put_v1_group_user.cwl
inputs:
- id: in_group_id
  doc: "The name of the group.\n--action ACTION\n"
  type: string
  inputBinding:
    prefix: --group-id
- id: in_users
  doc: ''
  type: string
  inputBinding:
    prefix: --users
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hca
- auth
- put-v1-group-user
