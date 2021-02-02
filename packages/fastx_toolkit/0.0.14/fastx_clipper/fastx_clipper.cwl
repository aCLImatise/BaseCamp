class: CommandLineTool
id: fastx_clipper.cwl
inputs:
- id: in_o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: in_i
  doc: ''
  type: File
  inputBinding:
    prefix: -i
- id: in_z
  doc: ''
  type: boolean
  inputBinding:
    prefix: -z
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: in_var_4
  doc: ''
  type: boolean
  inputBinding:
    prefix: -C
- id: in_var_5
  doc: ''
  type: boolean
  inputBinding:
    prefix: -c
- id: in_var_6
  doc: ''
  type: string
  inputBinding:
    prefix: -d
- id: in_n
  doc: ''
  type: boolean
  inputBinding:
    prefix: -n
- id: in_l
  doc: ''
  type: string
  inputBinding:
    prefix: -l
- id: in_var_9
  doc: ''
  type: boolean
  inputBinding:
    prefix: -D
- id: in_a
  doc: ''
  type: string
  inputBinding:
    prefix: -a
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fastx_clipper
