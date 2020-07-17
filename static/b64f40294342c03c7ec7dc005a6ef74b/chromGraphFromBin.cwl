class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/chromGraphFromBin.cwl
inputs:
- id: chrom
  doc: '- restrict output to single chromosome'
  type: string
  inputBinding:
    prefix: -chrom
- id: in_dot_chrom_graph
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_dot_tab
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- chromGraphFromBin
