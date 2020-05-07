class: CommandLineTool
id: flair.py.cwl
inputs:
- id: python
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: flair_py
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: mode
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- flair.py
