class: CommandLineTool
id: fastx_reverse_complement.cwl
inputs:
- id: r
  doc: ''
  type: boolean
  inputBinding:
    prefix: -r
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
- fastx_reverse_complement
