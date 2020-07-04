class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/hca_auth_delete_v1_role.cwl
inputs:
- id: role_id
  doc: The name of the role.
  type: string
  inputBinding:
    prefix: --role-id
outputs: []
cwlVersion: v1.1
baseCommand:
- hca
- auth
- delete-v1-role
