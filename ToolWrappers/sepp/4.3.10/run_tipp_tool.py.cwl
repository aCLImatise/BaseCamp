class: CommandLineTool
id: run_tipp_tool.py.cwl
inputs:
- id: in_p
  doc: ''
  type: string
  inputBinding:
    prefix: -p
- id: in_o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: in_a
  doc: ''
  type: string
  inputBinding:
    prefix: -a
- id: in_g
  doc: ''
  type: string
  inputBinding:
    prefix: -g
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- run_tipp_tool.py
