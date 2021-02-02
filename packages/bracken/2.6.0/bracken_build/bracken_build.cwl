class: CommandLineTool
id: ../../../bracken_build.cwl
inputs:
- id: in_t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
- id: in_x
  doc: ''
  type: string
  inputBinding:
    prefix: -x
- id: in_d
  doc: ''
  type: string
  inputBinding:
    prefix: -d
- id: in_l
  doc: ''
  type: string
  inputBinding:
    prefix: -l
- id: in_k
  doc: ''
  type: string
  inputBinding:
    prefix: -k
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bracken-build
