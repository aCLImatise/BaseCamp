class: CommandLineTool
id: gsutil_web.cwl
inputs:
- id: set
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: bucket_url
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: m
  doc: ''
  type: string
  inputBinding:
    prefix: -m
- id: e
  doc: ''
  type: string
  inputBinding:
    prefix: -e
outputs: []
cwlVersion: v1.1
baseCommand:
- gsutil
- web
