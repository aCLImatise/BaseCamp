class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/hca_auth_post_v1_role.cwl
inputs:
- id: role_id
  doc: ''
  type: string
  inputBinding:
    prefix: --role-id
- id: policy
  doc: ''
  type: string
  inputBinding:
    prefix: --policy
outputs: []
cwlVersion: v1.1
baseCommand:
- hca
- auth
- post-v1-role
