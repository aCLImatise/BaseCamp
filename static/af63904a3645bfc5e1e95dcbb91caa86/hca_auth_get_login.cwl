class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/hca_auth_get_login.cwl
inputs:
- id: redirect_uri
  doc: Where to redirect to once login is complete.
  type: string
  inputBinding:
    prefix: --redirect-uri
- id: state
  doc: An opaque parameter that is returned back to the `redirect_uri`.
  type: string
  inputBinding:
    prefix: --state
outputs: []
cwlVersion: v1.1
baseCommand:
- hca
- auth
- get-login
