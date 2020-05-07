class: CommandLineTool
id: vawk.cwl
inputs:
- id: v
  doc: ''
  type: string
  inputBinding:
    prefix: -v
- id: c
  doc: ''
  type: string
  inputBinding:
    prefix: -c
- id: header
  doc: ''
  type: boolean
  inputBinding:
    prefix: --header
- id: debug
  doc: ''
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- vawk
