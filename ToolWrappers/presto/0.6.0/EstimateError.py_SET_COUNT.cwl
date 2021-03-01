class: CommandLineTool
id: EstimateError.py_SET_COUNT.cwl
inputs:
- id: in_estimate_error_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- EstimateError.py
- SET_COUNT
