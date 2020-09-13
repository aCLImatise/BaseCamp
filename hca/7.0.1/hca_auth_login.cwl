class: CommandLineTool
id: ../../../hca_auth_login.cwl
inputs:
- id: in_access_token
  doc: ''
  type: string
  inputBinding:
    prefix: --access-token
- id: in_remote
  doc: ''
  type: boolean
  inputBinding:
    prefix: --remote
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hca
- auth
- login
