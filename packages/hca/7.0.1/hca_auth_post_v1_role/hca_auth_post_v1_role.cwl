class: CommandLineTool
id: hca_auth_post_v1_role.cwl
inputs:
- id: in_role_id
  doc: "Used to identify users, groups, and roles.\n--policy POLICY\n"
  type: string
  inputBinding:
    prefix: --role-id
- id: in_policy
  doc: ''
  type: string
  inputBinding:
    prefix: --policy
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hca
- auth
- post-v1-role
