class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/babel.cwl
inputs:
- id: i
  doc: ''
  type: boolean
  inputBinding:
    prefix: -i
- id: o
  doc: ''
  type: boolean
  inputBinding:
    prefix: -o
- id: input_type
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: var_3
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_type
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: var_5
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- babel
