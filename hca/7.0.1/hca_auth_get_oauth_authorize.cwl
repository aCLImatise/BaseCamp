class: CommandLineTool
id: ../../../hca_auth_get_oauth_authorize.cwl
inputs:
- id: in_redirect_uri
  doc: ''
  type: string
  inputBinding:
    prefix: --redirect-uri
- id: in_state
  doc: ''
  type: string
  inputBinding:
    prefix: --state
- id: in_client_id
  doc: ''
  type: string
  inputBinding:
    prefix: --client-id
- id: in_scope
  doc: ''
  type: string
  inputBinding:
    prefix: --scope
- id: in_resp_one_type
  doc: ''
  type: string
  inputBinding:
    prefix: --respone-type
- id: in_nonce
  doc: ''
  type: string
  inputBinding:
    prefix: --nonce
- id: in_prompt
  doc: ''
  type: string
  inputBinding:
    prefix: --prompt
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hca
- auth
- get-oauth-authorize
