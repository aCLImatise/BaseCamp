class: CommandLineTool
id: bedGraphPack_out.bedGraph.cwl
inputs:
- id: in_bed_graph
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_bed_graph
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- bedGraphPack
- out.bedGraph
