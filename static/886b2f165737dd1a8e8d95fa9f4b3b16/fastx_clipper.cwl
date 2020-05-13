class: CommandLineTool
id: fastx_clipper.cwl
inputs:
- id: a
  doc: ''
  type: string
  inputBinding:
    prefix: -a
- id: d
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
- id: d
  doc: ''
  type: string
  inputBinding:
    prefix: -d
- id: c
  doc: ''
  type: boolean
  inputBinding:
    prefix: -c
- id: c
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
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- fastx_clipper
