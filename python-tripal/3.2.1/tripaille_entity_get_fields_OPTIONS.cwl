class: CommandLineTool
id: tripaille_entity_get_fields_OPTIONS.cwl
inputs:
- id: entity
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- tripaille
- entity
- get_fields
- OPTIONS
