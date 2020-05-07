class: CommandLineTool
id: omero_admin_status.cwl
inputs:
- id: node_only
  doc: If set, then only tests if the icegridnode is running
  type: boolean
  inputBinding:
    prefix: --nodeonly
outputs: []
cwlVersion: v1.1
baseCommand:
- omero
- admin
- status
