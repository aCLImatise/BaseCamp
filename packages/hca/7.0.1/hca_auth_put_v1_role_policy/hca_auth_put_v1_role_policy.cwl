class: CommandLineTool
id: hca_auth_put_v1_role_policy.cwl
inputs:
- id: in_role_id
  doc: The name of the role.
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
- put-v1-role-policy
