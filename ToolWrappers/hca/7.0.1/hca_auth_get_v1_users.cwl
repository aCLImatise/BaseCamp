class: CommandLineTool
id: hca_auth_get_v1_users.cwl
inputs:
- id: in_next_token
  doc: ''
  type: string
  inputBinding:
    prefix: --next-token
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hca
- auth
- get-v1-users
