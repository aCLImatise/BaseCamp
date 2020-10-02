class: CommandLineTool
id: qcat_eval.cwl
inputs:
- id: in_g
  doc: ''
  type: string
  inputBinding:
    prefix: -g
- id: in_s
  doc: ''
  type: boolean
  inputBinding:
    prefix: -s
- id: in_d
  doc: ''
  type: string
  inputBinding:
    prefix: -d
- id: in_n
  doc: ''
  type: string
  inputBinding:
    prefix: -n
- id: in_t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- qcat-eval
