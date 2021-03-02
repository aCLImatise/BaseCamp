class: CommandLineTool
id: dsk.cwl
inputs:
- id: in_c
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_histo
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -histo
- id: in_o
  doc: ''
  type: string?
  inputBinding:
    prefix: -o
- id: in_d
  doc: ''
  type: long?
  inputBinding:
    prefix: -d
- id: in_m
  doc: ''
  type: long?
  inputBinding:
    prefix: -m
- id: in_t
  doc: ''
  type: long?
  inputBinding:
    prefix: -t
- id: in_input_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_km_er_size
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- dsk
