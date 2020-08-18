class: CommandLineTool
id: ../../../hca_auth_delete_v1_group.cwl
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
- delete-v1-group
