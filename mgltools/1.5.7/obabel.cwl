class: CommandLineTool
id: ../../../obabel.cwl
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
- id: input_type
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_filename
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_type
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: out_filename
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- obabel
