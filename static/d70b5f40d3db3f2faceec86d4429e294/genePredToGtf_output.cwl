class: CommandLineTool
id: genePredToGtf_output.gtf.cwl
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
- id: output_gtf
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- genePredToGtf
- output.gtf
