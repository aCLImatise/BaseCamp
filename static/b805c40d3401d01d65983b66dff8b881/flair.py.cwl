class: CommandLineTool
id: flair.py.cwl
inputs:
- id: in_mode
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
- flair.py
