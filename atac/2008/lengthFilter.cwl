class: CommandLineTool
id: ../../../lengthFilter.cwl
inputs:
- id: l
  doc: ''
  type: long
  inputBinding:
    prefix: -l
- id: var_1
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: var_2
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- lengthFilter
