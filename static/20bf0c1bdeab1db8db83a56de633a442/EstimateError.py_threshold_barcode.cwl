class: CommandLineTool
id: ../../../EstimateError.py_threshold_barcode.cwl
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
cwlVersion: v1.1
baseCommand:
- EstimateError.py
- threshold-barcode
