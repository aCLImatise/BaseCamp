class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/expMatrixToBarchartBed_matrixFile.cwl
inputs:
- id: auto_sql
  doc: ''
  type: string
  inputBinding:
    prefix: --autoSql
- id: exp_matrix_to_barchart_bed
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- expMatrixToBarchartBed
- matrixFile
