class: CommandLineTool
id: ../../../hca_auth_get_oauth_userinfo.cwl
inputs:
- id: in_log_level
  doc: ''
  type: string
  inputBinding:
    prefix: --log-level
- id: in_hca
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hca
- auth
- get-oauth-userinfo
