class: CommandLineTool
id: db_stat.cwl
inputs:
- id: d
  doc: ''
  type: File
  inputBinding:
    prefix: -d
- id: fn
  doc: ''
  type: boolean
  inputBinding:
    prefix: -fN
- id: h
  doc: ''
  type: string
  inputBinding:
    prefix: -h
- id: p
  doc: ''
  type: string
  inputBinding:
    prefix: -P
- id: s
  doc: ''
  type: string
  inputBinding:
    prefix: -s
outputs: []
cwlVersion: v1.1
baseCommand:
- db_stat
