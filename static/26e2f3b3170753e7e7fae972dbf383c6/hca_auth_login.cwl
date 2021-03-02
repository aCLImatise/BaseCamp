class: CommandLineTool
id: hca_auth_login.cwl
inputs:
- id: in_remote
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --remote
- id: in_access_token
  doc: ''
  type: string?
  inputBinding:
    prefix: --access-token
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- hca
- auth
- login
