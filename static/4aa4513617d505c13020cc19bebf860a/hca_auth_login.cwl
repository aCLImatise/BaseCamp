class: CommandLineTool
id: ../../../hca_auth_login.cwl
inputs:
- id: access_token
  doc: ''
  type: string
  inputBinding:
    prefix: --access-token
- id: remote
  doc: ''
  type: boolean
  inputBinding:
    prefix: --remote
outputs: []
cwlVersion: v1.1
baseCommand:
- hca
- auth
- login
