class: CommandLineTool
id: CalcDelta.py_gene_scg_file.cwl
inputs:
- id: in_calc_delta_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_gene_cov_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_gene_scg_file
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_output_stub
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- CalcDelta.py
- gene_scg_file
