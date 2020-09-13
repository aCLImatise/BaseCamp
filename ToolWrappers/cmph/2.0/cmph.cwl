class: CommandLineTool
id: ../../../cmph.cwl
inputs:
- id: in_var_0
  doc: ''
  type: File
  inputBinding:
    prefix: -m
- id: in_d
  doc: ''
  type: string
  inputBinding:
    prefix: -d
- id: in_t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
- id: in_b
  doc: ''
  type: string
  inputBinding:
    prefix: -b
- id: in_var_4
  doc: ''
  type: string
  inputBinding:
    prefix: -M
- id: in_a
  doc: ''
  type: string
  inputBinding:
    prefix: -a
- id: in_s
  doc: ''
  type: string
  inputBinding:
    prefix: -s
- id: in_c
  doc: ''
  type: string
  inputBinding:
    prefix: -c
- id: in_g
  doc: ''
  type: boolean
  inputBinding:
    prefix: -g
- id: in_f
  doc: ''
  type: string
  inputBinding:
    prefix: -f
- id: in_k
  doc: ''
  type: string
  inputBinding:
    prefix: -k
- id: in_var_11
  doc: ''
  type: boolean
  inputBinding:
    prefix: -V
- id: in_var_12
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- cmph
