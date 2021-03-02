class: CommandLineTool
id: tripaille_entity_get_fields.cwl
inputs:
- id: in_entity
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- tripaille
- entity
- get_fields
