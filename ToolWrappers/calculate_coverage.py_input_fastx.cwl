class: CommandLineTool
id: calculate_coverage.py_input_fastx.cwl
inputs:
- id: in_s
  doc: ''
  type: long
  inputBinding:
    prefix: -s
- id: in_f
  doc: ''
  type: string
  inputBinding:
    prefix: -f
- id: in_calculate_coverage_do_tpy
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
- calculate_coverage.py
- input_fastx
