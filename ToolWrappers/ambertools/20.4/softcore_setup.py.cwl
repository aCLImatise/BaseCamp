class: CommandLineTool
id: softcore_setup.py.cwl
inputs:
- id: in_to
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_prepare
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_a
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- softcore_setup.py
