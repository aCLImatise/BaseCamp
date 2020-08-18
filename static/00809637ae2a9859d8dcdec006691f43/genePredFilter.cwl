class: CommandLineTool
id: ../../../genePredFilter.cwl
inputs:
- id: verbose
  doc: '- level >= 2 prints out errors for each problem found.'
  type: string
  inputBinding:
    prefix: -verbose
- id: gene_pred_in
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: gene_pred_out
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- genePredFilter
