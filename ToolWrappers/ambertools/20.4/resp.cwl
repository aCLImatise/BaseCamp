class: CommandLineTool
id: resp.cwl
inputs:
- id: in_s
  doc: ''
  type: string
  inputBinding:
    prefix: -s
- id: in_w
  doc: ''
  type: string
  inputBinding:
    prefix: -w
- id: in_e
  doc: ''
  type: string
  inputBinding:
    prefix: -e
- id: in_t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
- id: in_q
  doc: ''
  type: string
  inputBinding:
    prefix: -q
- id: in_p
  doc: ''
  type: string
  inputBinding:
    prefix: -p
- id: in_var_6
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: in_i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: in_var_8
  doc: ''
  type: boolean
  inputBinding:
    prefix: -O
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- resp
