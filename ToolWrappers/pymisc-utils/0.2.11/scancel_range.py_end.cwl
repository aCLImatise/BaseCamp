class: CommandLineTool
id: scancel_range.py_end.cwl
inputs:
- id: in_s_cancel_range_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_start
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_end
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
- scancel_range.py
- end
