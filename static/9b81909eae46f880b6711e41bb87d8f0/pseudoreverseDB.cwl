class: CommandLineTool
id: pseudoreverseDB.py.cwl
inputs:
- id: python
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: pseudo_reversed_b
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- pseudoreverseDB.py
