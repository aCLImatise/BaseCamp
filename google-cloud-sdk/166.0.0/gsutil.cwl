class: CommandLineTool
id: ../../../gsutil.cwl
inputs:
- id: d
  doc: ''
  type: boolean
  inputBinding:
    prefix: -D
- id: dd
  doc: ''
  type: boolean
  inputBinding:
    prefix: -DD
- id: h
  doc: ''
  type: string
  inputBinding:
    prefix: -h
outputs: []
cwlVersion: v1.1
baseCommand:
- gsutil
