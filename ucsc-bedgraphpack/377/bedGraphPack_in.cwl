class: CommandLineTool
id: bedGraphPack_in.bedGraph.cwl
inputs:
- id: out_bed_graph
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- bedGraphPack
- in.bedGraph
