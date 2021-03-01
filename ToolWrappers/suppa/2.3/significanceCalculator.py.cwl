class: CommandLineTool
id: significanceCalculator.py.cwl
inputs:
- id: in_m
  doc: ''
  type: string?
  inputBinding:
    prefix: -m
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- significanceCalculator.py
