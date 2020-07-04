class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/tripaille_entity_add_entity.cwl
inputs:
- id: params
  doc: Values to populate the entity fields
  type: string
  inputBinding:
    prefix: --params
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
- add_entity
