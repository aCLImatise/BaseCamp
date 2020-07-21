class: CommandLineTool
id: ../../../bedGraphPack.cwl
inputs:
- id: in_dot_bed_graph
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_dot_bed_graph
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- bedGraphPack
