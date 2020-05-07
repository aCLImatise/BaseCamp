class: CommandLineTool
id: gsutil_lifecycle_url.cwl
inputs:
- id: get
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: url
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- gsutil
- lifecycle
- url
