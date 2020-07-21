class: CommandLineTool
id: ../../../hca_auth_post_oauth_revoke.cwl
inputs:
- id: token
  doc: The refresh token to revoke.
  type: string
  inputBinding:
    prefix: --token
- id: client_id
  doc: ''
  type: string
  inputBinding:
    prefix: --client-id
outputs: []
cwlVersion: v1.1
baseCommand:
- hca
- auth
- post-oauth-revoke
