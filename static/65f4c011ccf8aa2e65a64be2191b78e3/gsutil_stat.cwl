class: CommandLineTool
id: gsutil_stat.cwl
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
- stat
