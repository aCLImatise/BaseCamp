class: CommandLineTool
id: omero_admin_ice.cwl
inputs:
- id: argument
  doc: Arguments joined together to make an Ice command. If not present, the user
    will enter a console
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- omero
- admin
- ice
