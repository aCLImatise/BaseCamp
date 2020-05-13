class: CommandLineTool
id: gsutil_logging.cwl
inputs:
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
- id: url
  doc: ''
  type: string
  inputBinding:
    position: 2
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
outputs: []
cwlVersion: v1.1
baseCommand:
- gsutil
- logging
