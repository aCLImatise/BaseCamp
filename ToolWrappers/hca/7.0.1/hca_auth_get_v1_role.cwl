class: CommandLineTool
id: hca_auth_get_v1_role.cwl
inputs:
- id: in_role_id
  doc: The name of the role.
  type: string?
  inputBinding:
    prefix: --role-id
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- hca
- auth
- get-v1-role
