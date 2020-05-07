class: CommandLineTool
id: genePredFilter.cwl
inputs:
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
- id: verbose
  doc: =2 - level >= 2 prints out errors for each problem found.
  type: boolean
  inputBinding:
    prefix: -verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- genePredFilter
