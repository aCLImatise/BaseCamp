class: CommandLineTool
id: babel.cwl
inputs:
- id: input_type
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: name
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_type
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: name
  doc: ''
  type: string
  inputBinding:
    position: 3
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
outputs: []
cwlVersion: v1.1
baseCommand:
- babel
