class: CommandLineTool
id: hca_auth_get_login.cwl
inputs:
- id: in_redirect_uri
  doc: Where to redirect to once login is complete.
  type: string
  inputBinding:
    prefix: --redirect-uri
- id: in_state
  doc: An opaque parameter that is returned back to the `redirect_uri`.
  type: string
  inputBinding:
    prefix: --state
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hca
- auth
- get-login
