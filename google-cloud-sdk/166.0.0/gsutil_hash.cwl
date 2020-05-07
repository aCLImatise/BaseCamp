class: CommandLineTool
id: gsutil_hash.cwl
inputs:
- id: c
  doc: ''
  type: boolean
  inputBinding:
    prefix: -c
- id: m
  doc: ''
  type: boolean
  inputBinding:
    prefix: -m
outputs: []
cwlVersion: v1.1
baseCommand:
- gsutil
- hash
