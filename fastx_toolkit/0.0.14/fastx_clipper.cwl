class: CommandLineTool
id: ../../../fastx_clipper.cwl
inputs:
- id: a
  doc: ''
  type: string
  inputBinding:
    prefix: -a
- id: var_1
  doc: ''
  type: boolean
  inputBinding:
    prefix: -D
- id: l
  doc: ''
  type: string
  inputBinding:
    prefix: -l
- id: n
  doc: ''
  type: boolean
  inputBinding:
    prefix: -n
- id: var_4
  doc: ''
  type: string
  inputBinding:
    prefix: -d
- id: var_5
  doc: ''
  type: boolean
  inputBinding:
    prefix: -c
- id: var_6
  doc: ''
  type: boolean
  inputBinding:
    prefix: -C
- id: o
  doc: ''
  type: boolean
  inputBinding:
    prefix: -o
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: z
  doc: ''
  type: boolean
  inputBinding:
    prefix: -z
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
outputs: []
cwlVersion: v1.1
baseCommand:
- fastx_clipper
