class: CommandLineTool
id: gsutil_mv.cwl
inputs:
- id: src_url
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: dst_url
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: p
  doc: ''
  type: boolean
  inputBinding:
    prefix: -p
outputs: []
cwlVersion: v1.1
baseCommand:
- gsutil
- mv
