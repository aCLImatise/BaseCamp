class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/genePredToGtf.cwl
inputs:
- id: database
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: gene_pred_table
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_dot_gtf
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- genePredToGtf
