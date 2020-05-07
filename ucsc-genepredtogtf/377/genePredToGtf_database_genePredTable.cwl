class: CommandLineTool
id: genePredToGtf_database_genePredTable.cwl
inputs:
- id: output_gtf
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- genePredToGtf
- database
- genePredTable
