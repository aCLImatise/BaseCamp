class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/gcpp.py.cwl
inputs:
- id: ref
  doc: reference genetic code
  type: string
  inputBinding:
    prefix: --ref
- id: list
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: of
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: genetic
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: codes
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- gcpp.py
