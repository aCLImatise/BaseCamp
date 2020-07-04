class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/hca_dss_login.cwl
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
- dss
- login
