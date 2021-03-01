class: CommandLineTool
id: ftbl2metxml.py.cwl
inputs:
- id: in_network
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
- ftbl2metxml.py
