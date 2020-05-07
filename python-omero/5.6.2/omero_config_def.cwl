class: CommandLineTool
id: omero_config_def.cwl
inputs:
- id: name
  doc: Name of the profile which should be made the new active profile.
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- omero
- config
- def
