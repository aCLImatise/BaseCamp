class: CommandLineTool
id: ../../../calculate_coverage.py_input_fastx.cwl
inputs:
- id: f
  doc: ''
  type: string
  inputBinding:
    prefix: -f
- id: s
  doc: ''
  type: string
  inputBinding:
    prefix: -s
- id: calculate_coverage_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- calculate_coverage.py
- input_fastx
