class: CommandLineTool
id: omero_config_drop.cwl
inputs:
- id: name
  doc: Name of the profile to remove
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- omero
- config
- drop
