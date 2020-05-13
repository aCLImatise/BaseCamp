class: CommandLineTool
id: concat.cwl
inputs:
- id: extension
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: linker
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: f
  doc: ''
  type: Directory
  inputBinding:
    prefix: -f
- id: e
  doc: ''
  type: string
  inputBinding:
    prefix: -e
- id: prefix
  doc: ''
  type: File
  inputBinding:
    prefix: --Prefix
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- concat
