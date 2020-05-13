class: CommandLineTool
id: tripaille_entity_add_entity_OPTIONS.cwl
inputs:
- id: params
  doc: Values to populate the entity fields
  type: string
  inputBinding:
    prefix: --params
outputs: []
cwlVersion: v1.1
baseCommand:
- tripaille
- entity
- add_entity
- OPTIONS
