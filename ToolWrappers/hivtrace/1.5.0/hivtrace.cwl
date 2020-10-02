class: CommandLineTool
id: hivtrace.cwl
inputs:
- id: in_m
  doc: ''
  type: boolean
  inputBinding:
    prefix: -m
- id: in_t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
- id: in_r
  doc: ''
  type: string
  inputBinding:
    prefix: -r
- id: in_a
  doc: ''
  type: string
  inputBinding:
    prefix: -a
- id: in_i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hivtrace
