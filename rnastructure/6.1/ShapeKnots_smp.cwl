class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/ShapeKnots_smp.cwl
inputs:
- id: shape_knots
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: seq_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: ct_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- ShapeKnots-smp
