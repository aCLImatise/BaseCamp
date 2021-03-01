class: CommandLineTool
id: arrow_annotations_set_sequence.cwl
inputs:
- id: in_organism
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_sequence
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- arrow
- annotations
- set_sequence
