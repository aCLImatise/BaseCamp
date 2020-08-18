class: CommandLineTool
id: ../../../mglbabel.cwl
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
- id: babel
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_type
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: var_4
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: output_type
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: var_6
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- mglbabel
