class: CommandLineTool
id: tripaille_entity_add_entity.cwl
inputs:
- id: in_params
  doc: Values to populate the entity fields
  type: string
  inputBinding:
    prefix: --params
- id: in_entity
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- tripaille
- entity
- add_entity
