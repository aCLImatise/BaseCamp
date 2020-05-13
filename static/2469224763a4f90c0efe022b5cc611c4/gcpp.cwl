class: CommandLineTool
id: gcpp.py.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: list
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: of
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: genetic
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: codes
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: ref
  doc: reference genetic code
  type: string
  inputBinding:
    prefix: --ref
outputs: []
cwlVersion: v1.1
baseCommand:
- gcpp.py
