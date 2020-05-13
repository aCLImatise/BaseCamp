class: CommandLineTool
id: clairvoyante.py.cwl
inputs:
- id: submodule_name
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: of
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: the
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: submodule
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- clairvoyante.py
