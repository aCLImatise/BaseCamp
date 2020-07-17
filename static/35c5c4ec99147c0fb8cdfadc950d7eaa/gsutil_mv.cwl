class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/gsutil_mv.cwl
inputs:
- id: p
  doc: ''
  type: boolean
  inputBinding:
    prefix: -p
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
outputs: []
cwlVersion: v1.1
baseCommand:
- gsutil
- mv
