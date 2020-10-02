class: CommandLineTool
id: expMatrixToBarchartBed_matrixFile.cwl
inputs:
- id: in_auto_sql
  doc: ''
  type: string
  inputBinding:
    prefix: --autoSql
- id: in_exp_matrix_to_barchart_bed
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- expMatrixToBarchartBed
- matrixFile
