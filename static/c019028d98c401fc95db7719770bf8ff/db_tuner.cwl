class: CommandLineTool
id: db_tuner.cwl
inputs:
- id: c
  doc: ''
  type: string
  inputBinding:
    prefix: -c
- id: d
  doc: ''
  type: File
  inputBinding:
    prefix: -d
- id: h
  doc: ''
  type: string
  inputBinding:
    prefix: -h
- id: s
  doc: ''
  type: string
  inputBinding:
    prefix: -s
- id: v
  doc: ''
  type: string
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- db_tuner
