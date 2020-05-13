class: CommandLineTool
id: chromGraphToBin_out.chromGraph.cwl
inputs:
- id: in_tab
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_chrom_graph
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- chromGraphToBin
- out.chromGraph
