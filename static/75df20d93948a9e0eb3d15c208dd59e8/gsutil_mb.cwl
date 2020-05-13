class: CommandLineTool
id: gsutil_mb.cwl
inputs:
- id: c
  doc: ''
  type: string
  inputBinding:
    prefix: -c
- id: l
  doc: ''
  type: string
  inputBinding:
    prefix: -l
- id: p
  doc: ''
  type: string
  inputBinding:
    prefix: -p
outputs: []
cwlVersion: v1.1
baseCommand:
- gsutil
- mb
