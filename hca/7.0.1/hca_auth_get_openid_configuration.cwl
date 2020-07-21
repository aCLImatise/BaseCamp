class: CommandLineTool
id: ../../../hca_auth_get_openid_configuration.cwl
inputs:
- id: host
  doc: Must be `auth.data.humancellatlas.org`.
  type: string
  inputBinding:
    prefix: --host
outputs: []
cwlVersion: v1.1
baseCommand:
- hca
- auth
- get-openid-configuration
