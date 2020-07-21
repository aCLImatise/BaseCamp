class: CommandLineTool
id: ../../../mglobabel.cwl
inputs:
- id: i
  doc: ''
  type: boolean
  inputBinding:
    prefix: -i
- id: var_1
  doc: ''
  type: boolean
  inputBinding:
    prefix: -o
- id: var_2
  doc: ''
  type: boolean
  inputBinding:
    prefix: -O
- id: o_babel
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_type
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_filename
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: output_type
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: out_filename
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- mglobabel
