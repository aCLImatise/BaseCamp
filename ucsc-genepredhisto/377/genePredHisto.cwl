class: CommandLineTool
id: ../../../genePredHisto.cwl
inputs:
- id: ids
  doc: '- a second column with the gene name, useful for finding outliers.'
  type: boolean
  inputBinding:
    prefix: -ids
- id: what
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: gene_pred_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: histo_out
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- genePredHisto
