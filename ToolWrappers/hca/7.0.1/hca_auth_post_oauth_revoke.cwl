class: CommandLineTool
id: hca_auth_post_oauth_revoke.cwl
inputs:
- id: in_client_id
  doc: "--token TOKEN         The refresh token to revoke.\n"
  type: string
  inputBinding:
    prefix: --client-id
- id: in_token
  doc: ''
  type: string
  inputBinding:
    prefix: --token
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hca
- auth
- post-oauth-revoke
