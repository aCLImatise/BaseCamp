class: CommandLineTool
id: ../../../hca_auth_put_v1_group_policy.cwl
inputs:
- id: group_id
  doc: The name of the group.
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
- put-v1-group-policy
