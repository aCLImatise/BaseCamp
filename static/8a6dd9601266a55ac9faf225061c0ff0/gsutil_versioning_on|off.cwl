class: CommandLineTool
id: ../../../gsutil_versioning_on|off.cwl
inputs:
- id: gs_util
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: versioning
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: set
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: on_vertical_line_off
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: bucket_url_dot_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- gsutil
- versioning
- on|off
