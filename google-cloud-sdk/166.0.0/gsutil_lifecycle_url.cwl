class: CommandLineTool
id: ../../../gsutil_lifecycle_url.cwl
inputs:
- id: gs_util
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: lifecycle
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: get
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: url
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- gsutil
- lifecycle
- url
