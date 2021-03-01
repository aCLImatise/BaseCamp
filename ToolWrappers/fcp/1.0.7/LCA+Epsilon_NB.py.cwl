class: CommandLineTool
id: LCA+Epsilon_NB.py.cwl
inputs:
- id: in_python
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_lca
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- LCA+Epsilon-NB.py
