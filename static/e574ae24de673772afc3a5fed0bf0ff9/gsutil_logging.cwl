class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/gsutil_logging.cwl
inputs:
- id: b
  doc: ''
  type: string
  inputBinding:
    prefix: -b
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: set
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: on
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: url_dot_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- gsutil
- logging
