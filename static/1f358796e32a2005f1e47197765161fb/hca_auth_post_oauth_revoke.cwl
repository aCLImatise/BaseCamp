class: CommandLineTool
id: hca_auth_post_oauth_revoke.cwl
inputs:
- id: in_client_id
  doc: The refresh token to revoke.
  type: string?
  inputBinding:
    prefix: --client-id
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- hca
- auth
- post-oauth-revoke
