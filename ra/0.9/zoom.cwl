class: CommandLineTool
id: ../../../zoom.cwl
inputs:
- id: root
  doc: ''
  type: long
  inputBinding:
    prefix: --root
- id: depth
  doc: ''
  type: long
  inputBinding:
    prefix: --depth
- id: depot
  doc: ''
  type: string
  inputBinding:
    prefix: --depot
outputs: []
cwlVersion: v1.1
baseCommand:
- zoom
