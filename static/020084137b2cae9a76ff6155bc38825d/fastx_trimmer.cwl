class: CommandLineTool
id: fastx_trimmer.cwl
inputs:
- id: f
  doc: ''
  type: string
  inputBinding:
    prefix: -f
- id: l
  doc: ''
  type: string
  inputBinding:
    prefix: -l
- id: t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
- id: m
  doc: ''
  type: long
  inputBinding:
    prefix: -m
- id: z
  doc: ''
  type: boolean
  inputBinding:
    prefix: -z
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
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
- fastx_trimmer
