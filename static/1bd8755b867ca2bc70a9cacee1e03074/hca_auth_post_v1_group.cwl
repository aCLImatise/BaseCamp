class: CommandLineTool
id: ../../../hca_auth_post_v1_group.cwl
inputs:
- id: group_id
  doc: ''
  type: string
  inputBinding:
    prefix: --group-id
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
- post-v1-group
