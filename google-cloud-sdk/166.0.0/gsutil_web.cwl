class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/gsutil_web.cwl
inputs:
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
- id: set
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: bucket_url_dot_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- gsutil
- web
