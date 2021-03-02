class: CommandLineTool
id: allegro.cwl
inputs:
- id: in_m
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_n
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_t
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_l
  doc: ''
  type: File?
  inputBinding:
    prefix: -l
- id: in_options_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- allegro
