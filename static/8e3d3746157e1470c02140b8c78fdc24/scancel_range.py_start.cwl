class: CommandLineTool
id: scancel_range.py_start.cwl
inputs:
- id: in_end
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
- scancel_range.py
- start
