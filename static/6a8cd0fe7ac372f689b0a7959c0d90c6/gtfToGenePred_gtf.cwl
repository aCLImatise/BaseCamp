class: CommandLineTool
id: gtfToGenePred_gtf.cwl
inputs:
- id: gene_pred
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- gtfToGenePred
- gtf
