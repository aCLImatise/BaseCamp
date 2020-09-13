class: CommandLineTool
id: ../../../gsutil.cwl
inputs:
- id: in_h
  doc: ''
  type: string
  inputBinding:
    prefix: -h
- id: in_dd
  doc: ''
  type: boolean
  inputBinding:
    prefix: -DD
- id: in_d
  doc: ''
  type: boolean
  inputBinding:
    prefix: -D
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gsutil
