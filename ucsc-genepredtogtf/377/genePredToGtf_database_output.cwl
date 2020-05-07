class: CommandLineTool
id: genePredToGtf_database_output.gtf.cwl
inputs:
- id: gene_pred_table
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_gtf
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- genePredToGtf
- database
- output.gtf
