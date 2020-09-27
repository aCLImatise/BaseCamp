class: CommandLineTool
id: candf.cwl
inputs:
- id: in_t
  doc: ''
  type: File
  inputBinding:
    prefix: -t
- id: in_r
  doc: ''
  type: File
  inputBinding:
    prefix: -r
- id: in_var_2
  doc: ''
  type: long
  inputBinding:
    prefix: -S
- id: in_var_3
  doc: ''
  type: long
  inputBinding:
    prefix: -s
- id: in_var_4
  doc: ''
  type: long
  inputBinding:
    prefix: -M
- id: in_var_5
  doc: ''
  type: long
  inputBinding:
    prefix: -m
- id: in_o
  doc: ''
  type: File
  inputBinding:
    prefix: -o
- id: in_c
  doc: ''
  type: long
  inputBinding:
    prefix: -c
- id: in_seq_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_o
  doc: ''
  type: File
  outputBinding:
    glob: $(inputs.in_o)
cwlVersion: v1.1
baseCommand:
- candf
