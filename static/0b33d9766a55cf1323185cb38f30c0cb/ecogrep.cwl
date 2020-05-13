class: CommandLineTool
id: ecogrep.cwl
inputs:
- id: filename
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: d
  doc: ''
  type: string
  inputBinding:
    prefix: -d
- id: p
  doc: ''
  type: string
  inputBinding:
    prefix: -p
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: r
  doc: ''
  type: string
  inputBinding:
    prefix: -r
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- ecogrep
