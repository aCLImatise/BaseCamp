class: CommandLineTool
id: gbmunge.cwl
inputs:
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: f
  doc: ''
  type: string
  inputBinding:
    prefix: -f
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: t
  doc: ''
  type: boolean
  inputBinding:
    prefix: -t
- id: s
  doc: ''
  type: boolean
  inputBinding:
    prefix: -s
outputs: []
cwlVersion: v1.1
baseCommand:
- gbmunge
