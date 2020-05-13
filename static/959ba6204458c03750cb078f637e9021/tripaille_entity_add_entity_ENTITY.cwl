class: CommandLineTool
id: tripaille_entity_add_entity_ENTITY.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: entity
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- tripaille
- entity
- add_entity
- ENTITY
