class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/chromGraphToBin.cwl
inputs:
- id: in_dot_tab
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_dot_chrom_graph
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- chromGraphToBin
