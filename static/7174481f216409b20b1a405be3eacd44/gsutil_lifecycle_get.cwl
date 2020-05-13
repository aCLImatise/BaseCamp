class: CommandLineTool
id: gsutil_lifecycle_get.cwl
inputs:
- id: url
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- gsutil
- lifecycle
- get
