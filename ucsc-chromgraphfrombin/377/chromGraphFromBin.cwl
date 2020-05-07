class: CommandLineTool
id: chromGraphFromBin.cwl
inputs:
- id: in_chrom_graph
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_tab
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: restrict
  doc: to single chromosome
  type: string
  inputBinding:
    prefix: '- restrict'
outputs: []
cwlVersion: v1.1
baseCommand:
- chromGraphFromBin
