class: CommandLineTool
id: ShapeKnots_seq file.cwl
inputs:
- id: ct_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- ShapeKnots
- seq file
