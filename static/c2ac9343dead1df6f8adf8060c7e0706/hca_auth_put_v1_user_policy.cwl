class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/hca_auth_put_v1_user_policy.cwl
inputs:
- id: user_id
  doc: User ID (email).
  type: string
  inputBinding:
    prefix: --user-id
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
- put-v1-user-policy
