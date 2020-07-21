class: CommandLineTool
id: ../../../gsutil_stat.cwl
inputs:
- id: url_dot_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- gsutil
- stat
