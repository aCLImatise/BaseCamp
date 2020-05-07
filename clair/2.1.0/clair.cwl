class: CommandLineTool
id: clair.py.cwl
inputs:
- id: python
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: clair_py
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: submodule
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: of
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: the
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: submodule
  doc: ''
  type: string
  inputBinding:
    position: 5
outputs: []
cwlVersion: v1.1
baseCommand:
- clair.py
