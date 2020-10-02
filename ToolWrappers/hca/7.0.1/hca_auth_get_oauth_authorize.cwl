class: CommandLineTool
id: hca_auth_get_oauth_authorize.cwl
inputs:
- id: in_redirect_uri
  doc: ''
  type: string
  inputBinding:
    prefix: --redirect-uri
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hca
- auth
- get-oauth-authorize
