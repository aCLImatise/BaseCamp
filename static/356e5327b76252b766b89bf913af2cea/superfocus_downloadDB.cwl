class: CommandLineTool
id: superfocus_downloadDB.cwl
inputs:
- id: a
  doc: ''
  type: string
  inputBinding:
    prefix: -a
- id: c
  doc: ''
  type: string
  inputBinding:
    prefix: -c
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- superfocus_downloadDB
