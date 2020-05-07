class: CommandLineTool
id: CalcDelta.py_output_stub.cwl
inputs:
- id: gene_cov_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: gene_scg_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_stub
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- CalcDelta.py
- output_stub
