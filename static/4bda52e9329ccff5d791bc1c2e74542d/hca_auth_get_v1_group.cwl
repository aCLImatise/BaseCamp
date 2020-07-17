class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/hca_auth_get_v1_group.cwl
inputs:
- id: group_id
  doc: The name of the group.
  type: string
  inputBinding:
    prefix: --group-id
outputs: []
cwlVersion: v1.1
baseCommand:
- hca
- auth
- get-v1-group
