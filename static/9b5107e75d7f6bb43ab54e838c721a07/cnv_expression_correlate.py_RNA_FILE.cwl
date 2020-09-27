class: CommandLineTool
id: cnv_expression_correlate.py_RNA_FILE.cwl
inputs:
- id: in_o
  doc: ''
  type: File
  inputBinding:
    prefix: -o
- id: in_cnv_expression_correlated_otp_y
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_cnv_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_rna_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- cnv_expression_correlate.py
- RNA_FILE
