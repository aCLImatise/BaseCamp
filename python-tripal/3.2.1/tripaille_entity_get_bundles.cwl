class: CommandLineTool
id: tripaille_entity_get_bundles.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- tripaille
- entity
- get_bundles
