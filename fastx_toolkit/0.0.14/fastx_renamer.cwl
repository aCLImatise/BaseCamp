class: CommandLineTool
id: fastx_renamer.cwl
inputs:
- id: n
  doc: ''
  type: string
  inputBinding:
    prefix: -n
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
- fastx_renamer
