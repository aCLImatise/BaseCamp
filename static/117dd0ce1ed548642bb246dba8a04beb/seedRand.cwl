class: CommandLineTool
id: seedRand.py_n.cwl
inputs:
- id: seed
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: n
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- seedRand.py
- n
