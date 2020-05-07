class: CommandLineTool
id: gsutil_rb.cwl
inputs:
- id: f
  doc: ''
  type: boolean
  inputBinding:
    prefix: -f
outputs: []
cwlVersion: v1.1
baseCommand:
- gsutil
- rb
