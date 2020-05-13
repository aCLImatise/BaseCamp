class: CommandLineTool
id: chromGraphToBin_in.tab.cwl
inputs:
- id: out_chrom_graph
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- chromGraphToBin
- in.tab
