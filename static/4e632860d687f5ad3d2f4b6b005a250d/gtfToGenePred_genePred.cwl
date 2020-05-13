class: CommandLineTool
id: gtfToGenePred_genePred.cwl
inputs:
- id: gtf
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: gene_pred
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- gtfToGenePred
- genePred
