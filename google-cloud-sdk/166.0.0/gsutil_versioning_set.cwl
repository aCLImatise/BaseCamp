class: CommandLineTool
id: ../../../gsutil_versioning_set.cwl
inputs:
- id: on_vertical_line_off
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
- versioning
- set
